for $x in doc("ShoppingCart.xml")/shoppingCarts/ShoppingCart, $y in doc("Customer.xml")/customers/Customer
where $x/ShoppingCart.items/*[@idref = "0009"] and $y[@customerID = $x/ShoppingCart.ownedBy/Customer/@idref]
return
<SpecialCustomers>
 {$y/Customer.username}
</SpecialCustomers>