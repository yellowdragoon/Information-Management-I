(:
Xquery on the ShoppingCart.xml document: This query iterates over
All of the ShoppingCarts, and for each cart, if the ShoppingCart.totalCost is over 150,000, we return it.
This query supports the PurchasesToyOnline use case, as the payment system may need to a check to ensure
the amount of money the customer is paying does not exceed the max transfer supported by the system in 
one transaction.
:)

for $x in doc("ShoppingCart.xml")/shoppingCarts/ShoppingCart
where $x/ShoppingCart.totalCost>150000
return ("Customers with shopping carts above 150000$ in value: ", $x/ShoppingCart.ownedBy/Customer/@idref)