for $x in doc("ShoppingCart.xml")/shoppingCarts/ShoppingCart
where $x/ShoppingCart.totalCost>1500
return ("Customers with shopping carts above 1500$ in value: ", $x/ShoppingCart.ownedBy/Customer/@idref)