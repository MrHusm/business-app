package com.business.base.support;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.dao.support.DaoSupport;
import org.springframework.transaction.support.TransactionSynchronizationManager;

public class Ibatis3DaoSupport extends DaoSupport
{
    private SqlSessionFactory sessionFactory;
    private IBatis3DaoTemplate template;

    public void createTemplate()
    {
        this.template = new IBatis3DaoTemplate(this.sessionFactory);
    }

    public IBatis3DaoTemplate getTemplate()
    {
        return this.template;
    }

    public void setTemplate(IBatis3DaoTemplate template) {
        this.template = template;
    }

    public SqlSession openSession()
    {
        SqlSession session = (SqlSession)
                TransactionSynchronizationManager.getResource(this.sessionFactory);
        if (session == null) {
            session = this.sessionFactory.openSession();
        }

        return session;
    }

    public SqlSessionFactory getSessionFactory() {
        return this.sessionFactory;
    }

    public void setSessionFactory(SqlSessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
        this.template = new IBatis3DaoTemplate(sessionFactory);
    }

    protected void checkDaoConfig()
            throws IllegalArgumentException
    {
        if (this.sessionFactory == null)
            throw new IllegalArgumentException(
                    "Property 'sessionFactory' or 'template'  is required");
    }
}
