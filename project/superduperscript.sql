CREATE TABLE Protagonist
(
  Character_id INT NOT NULL,
  PRIMARY KEY (Character_id)
);

CREATE TABLE Room
(
  Room_id INT NOT NULL,
  PRIMARY KEY (Room_id)
);

CREATE TABLE Npc
(
  Enemy_Id INT NOT NULL,
  Name INT NOT NULL,
  Room_id INT,
  PRIMARY KEY (Enemy_Id),
  FOREIGN KEY (Room_id) REFERENCES Room(Room_id)
);

CREATE TABLE Texti
(
  Text_id INT NOT NULL,
  ActualText INT NOT NULL,
  Room_id INT NOT NULL,
  PRIMARY KEY (Text_id),
  FOREIGN KEY (Room_id) REFERENCES Room(Room_id)
);

CREATE TABLE Lista
(
  Room_id_1 INT NOT NULL,
  ListaRoom_id_2 INT NOT NULL,
  PRIMARY KEY (Room_id_1, ListaRoom_id_2),
  FOREIGN KEY (Room_id_1) REFERENCES Room(Room_id),
  FOREIGN KEY (ListaRoom_id_2) REFERENCES Room(Room_id)
);

CREATE TABLE Item
(
  Item_id INT NOT NULL,
  Name INT NOT NULL,
  Use INT NOT NULL,
  Character_id INT,
  Room_id INT,
  PRIMARY KEY (Item_id),
  FOREIGN KEY (Character_id) REFERENCES Protagonist(Character_id),
  FOREIGN KEY (Room_id) REFERENCES Room(Room_id)
);



############################################################################
###################  INPUT BELOW       #####################################

# [Protagonist] #
INSERT INTO Protagonist VALUES (1);

# [Room] #
INSERT INTO VALUES ()

# [Npc] #
INSERT INTO VALUES ()

# [Texti] #
INSERT INTO VALUES ()

# [Lista] #
INSERT INTO VALUES ()

# [Item] #
INSERT INTO VALUES ()
