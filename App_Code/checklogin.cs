﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for checklogin
/// </summary>
public class checklogin
{
    public checklogin()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public int Kiemtra(string id, string pass)
    {
        SqlConnection conn = new SqlConnection(@"Data Source=.;Initial Catalog=qlbh2;Integrated Security=True");
        if (conn.State == ConnectionState.Closed)
        {
            conn.Open();
        }
        SqlCommand Cmd = new SqlCommand("select * from login where username=@username and pw=@pw", conn);
        Cmd.Parameters.Add(new SqlParameter("@username", SqlDbType.VarChar, 8));
        Cmd.Parameters.Add(new SqlParameter("@pw", SqlDbType.VarChar, 8));
        Cmd.Parameters["@username"].Value = id;
        Cmd.Parameters["@pw"].Value = pass;
        if (Cmd.ExecuteReader().HasRows)
            return 1;
        else
            return 0;
    }
}