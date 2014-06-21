## U3.W9: Design Your Own DATABASE 

####I worked on this challenge [by myself].


### Release 0: Decide what you want to track
         ---------  Come up with something that needs at least 2 tables.  -------------

I have decided to keep track of the vendors of metals used in the construction of aerospace products and the contracts they have been rewarded.

This will be a one-to-many relationship

Each vendor can be awarded more than one contract.  However, the way I have designed the data table, only one vendor can be awarded to a single contract.  If contracts represented projects, then materials may be needed from more than one vendor.  This would become a many-to-many relationship.

Many-to-many relationship: Each vendor may be awarded several contracts.  Each contract may need to be fulfilled by several vendors.


###Release 1: Design the Schema
### My Schema:

<img src="http://ChandlerHCSmith.github.io/unit3_projects/week_9/sql_build_your_own_db/imgs/graphical_schema_of_vendors_and_contracts.jpg" height="510" width="592">





