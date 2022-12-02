(:
Xquery on multiple documents: (ShoppingCart and Customer Classes). This query iterates over
All of the ShoppingCarts and Customers in each xml document, and for each pair, first examines
whether the ShoppingCart has any items with the id "0009", then match all of the corresponding Customers
via the customerID attribute, and return the usernames of those SpecialCustomers who have that item in a
seperate tag.
This query supports the SignsUpForLoyaltyProgram use case, as, for example, we might want to give
specific users a higher VIP tier to start with if they have purchased/are purchasing certain rare/expensive
LEGO sets/bundles. Therefore this xquery can quickly filter out all of the users who have a certain ID set.
:)

for $x in doc("ShoppingCart.xml")/shoppingCarts/ShoppingCart, $y in doc("Customer.xml")/customers/Customer
where $x/ShoppingCart.items/*[@idref = "0009"] and $y[@customerID = $x/ShoppingCart.ownedBy/Customer/@idref]
return
<SpecialCustomers>
 {$y/Customer.username}
</SpecialCustomers>