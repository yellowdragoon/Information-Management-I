for $x in doc("ShoppingCart.xml")/shoppingCarts/ShoppingCart
where $x/ShoppingCart.totalCost>150000
return ("Customers with shopping carts above 150000$ in value: ", $x/ShoppingCart.ownedBy/Customer/@idref)