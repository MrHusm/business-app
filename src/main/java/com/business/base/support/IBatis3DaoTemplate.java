package com.business.base.support;

import org.apache.ibatis.session.ResultHandler;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.jdbc.support.JdbcAccessor;
import org.springframework.transaction.support.TransactionSynchronizationManager;

import java.util.List;

public class IBatis3DaoTemplate extends JdbcAccessor {
    private SqlSessionFactory sessionFactory;

    public IBatis3DaoTemplate(SqlSessionFactory factory) {
        this.sessionFactory = factory;
    }

    public SqlSession openSession() {
        SqlSession session = (SqlSession)TransactionSynchronizationManager.getResource(this.sessionFactory);
        if(session == null) {
            session = this.sessionFactory.openSession();
        }

        return session;
    }

    public void setSessionFactory(SqlSessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public List executeFind(SqlSessionCallback callback) {
        return (List)this.execute(callback);
    }

    public Object execute(SqlSessionCallback callback) {
        SqlSession session = this.openSession();
        Object obj = callback.doInSqlSession(session);
        if(session != null) {
            session.close();
        }

        return obj;
    }

    public int delete(String statement) {
        return this.delete(statement, (Object) null);
    }

    public int delete(final String statement, final Object param) {
        return ((Integer)this.execute(new SqlSessionCallback() {
            public Object doInSqlSession(SqlSession session) {
                return param != null ? Integer.valueOf(session.delete(statement, param)) : Integer.valueOf(session.delete(statement));
            }
        })).intValue();
    }

    public int update(final String statement, final Object param) {
        return ((Integer)this.execute(new SqlSessionCallback() {
            public Object doInSqlSession(SqlSession session) {
                return param != null ? Integer.valueOf(session.update(statement, param)) : Integer.valueOf(session.update(statement));
            }
        })).intValue();
    }

    public int update(String statement) {
        return this.update(statement, (Object) null);
    }

    public int insert(final String statement, final Object param) {
        return ((Integer)this.execute(new SqlSessionCallback() {
            public Object doInSqlSession(SqlSession session) {
                return param != null ? Integer.valueOf(session.insert(statement, param)) : Integer.valueOf(session.insert(statement));
            }
        })).intValue();
    }

    public int insert(String statement) {
        return this.insert(statement, (Object) null);
    }

    public List selectList(final String statement, final Object param, final RowBounds bounds) {
        return this.executeFind(new SqlSessionCallback() {
            public Object doInSqlSession(SqlSession session) {
                if (statement == null) {
                    throw new IllegalArgumentException("Sql \'statement\' require");
                } else {
                    return bounds != null && param != null ? session.selectList(statement, param, bounds) : (bounds != null ? session.selectList(statement, (Object) null, bounds) : (param != null ? session.selectList(statement, param) : session.selectList(statement)));
                }
            }
        });
    }

    public List selectList(String statement, Object param, int skip, int limit) {
        return this.selectList(statement, param, new RowBounds(skip, limit));
    }

    public List selectList(String statement, Object param) {
        return this.selectList(statement, param, (RowBounds) null);
    }

    public List selectList(String statement) {
        return this.selectList(statement, (Object) null);
    }

    public void select(final String statement, final Object param, final RowBounds bounds, final ResultHandler handler) {
        if(statement != null && handler != null) {
            this.execute(new SqlSessionCallback() {
                public Object doInSqlSession(SqlSession session) {
                    if(handler != null && bounds != null && param != null) {
                        session.select(statement, param, bounds, handler);
                    } else if(bounds == null) {
                        session.select(statement, param, handler);
                    }

                    return null;
                }
            });
        } else {
            throw new IllegalArgumentException("\'statement\' and \'handler\' require");
        }
    }

    public void select(String statement, Object param, ResultHandler handler) {
        this.select(statement, param, (RowBounds) null, handler);
    }

    public Object selectOne(String statement) {
        return this.selectOne(statement, (Object) null);
    }

    public Object selectOne(final String statement, final Object param) {
        if(statement == null) {
            throw new IllegalArgumentException("Sql \'statement\' require");
        } else {
            return this.execute(new SqlSessionCallback() {
                public Object doInSqlSession(SqlSession session) {
                    return param != null?session.selectOne(statement, param):session.selectOne(statement);
                }
            });
        }
    }
}
