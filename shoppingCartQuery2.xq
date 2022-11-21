for $x in doc("ShoppingCart.xml")/shoppingCarts/ShoppingCart
where $x/ShoppingCart.items/*[fn:contains(@idref, "000") = true()]
return
<SpecialCustomers>
 {$x/ShoppingCart.ownedBy/Customer}
</SpecialCustomers>