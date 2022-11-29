for $x in doc("ShoppingCart.xml")/shoppingCarts, $y in doc("Customer.xml")/customers
where $x/ShoppingCart/ShoppingCart.items/*[@idref = "0009"] and $y/Customer[@customerID = $x/ShoppingCart/ShoppingCart.ownedBy/Customer[@idref]]
return
<SpecialCustomers>
 {$x/ShoppingCart.ownedBy/Customer}
</SpecialCustomers>