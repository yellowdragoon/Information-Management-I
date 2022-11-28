for $x in doc("ShoppingCart.xml")/shoppingCarts/ShoppingCart,
    $y in doc("Customer.xml")/customers
where $x/ShoppingCart.items/*/@idref = "0456"
where $y/[@idref = $x/ShoppingCart.ownedBy[@idref]]
return
<SpecialCustomers>
 {$y/Customer/Customer.username}
</SpecialCustomers>