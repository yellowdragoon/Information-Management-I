for $x in doc("Customer.xml")//Customer/[@customerID]

return 
<customerIDs>
    {$x/string(@customerID)}
</customerIDs>