const Handler =() =>{
    const query = (sql,con) => {
        con.query(sql,(err,result) => {
            return result
        })
    }
}