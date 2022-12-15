let $x := doc("Customer.xml")/customers/Customer/Customer.username/string()
return fn:string-join($x, '+')