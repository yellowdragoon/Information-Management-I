for $x in doc("ShoppingCart.xml")/shoppingCarts/ShoppingCart
where fn:contains(string($x/ShoppingCart.items/*/@idref), "69")
return ("Customers with '69' as a substring in any item ids: ", $x/ShoppingCart.ownedBy/Customer/@idref)