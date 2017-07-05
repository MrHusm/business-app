package com.business.base.support;

import org.apache.ibatis.session.SqlSession;

public abstract interface SqlSessionCallback
{
    public abstract Object doInSqlSession(SqlSession paramSqlSession);
}
