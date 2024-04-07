-- One User can have One Client (One-to-One).
ALTER TABLE Client ADD CONSTRAINT FK_User_Client FOREIGN KEY (user_id) REFERENCES User(user_id);

-- One User can place Many Orders (One-to-Many).
ALTER TABLE Order ADD CONSTRAINT FK_User_Order FOREIGN KEY (user_id) REFERENCES User(user_id);

-- One Order can have Many OrderItems (One-to-Many).
ALTER TABLE OrderItem ADD CONSTRAINT FK_Order_OrderItem FOREIGN KEY (order_id) REFERENCES Order(order_id);

-- One User can provide Many Feedback (One-to-Many).
ALTER TABLE Feedback ADD CONSTRAINT FK_User_Feedback FOREIGN KEY (user_id) REFERENCES User(user_id);

-- One Farm can have Many Weather entries (One-to-Many).
ALTER TABLE Weather ADD CONSTRAINT FK_Farm_Weather FOREIGN KEY (farm_id) REFERENCES Farm(farm_id);
