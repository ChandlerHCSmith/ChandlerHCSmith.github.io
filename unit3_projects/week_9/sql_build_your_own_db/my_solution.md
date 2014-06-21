## U3.W9: Design Your Own DATABASE 

####I worked on this challenge [by myself].


### Release 2: Add the schemas
Follow the instructions from 4_intro_to_SQLite to set up your database.

Here is the Schema for the vendors table:
<img src="..imgs/schema_vendors_small.jpg" height="184" width="362">

Here is the Schema for the contracts table:
<img src="..imgs/schema_contracts_small.jpg" height="141" width="434">

### Release 3: Join your tables
Research connecting your tables to one another.

Since the vendor_id is unique, I decided to include this column in both tables.  I decided to make the linkage between tables through vendor_id.

SELECT company_name,contract_id, metal
  FROM vendors JOIN contracts ON (vendors.vendor_id = contracts.vendor_id)
Where vendors.vendor_id = 2234;

SELECT company_name,contract_id, metal
  FROM vendors JOIN contracts ON (vendors.vendor_id = contracts.vendor_id)
Where vendors.vendor_id > 5482
GROUP BY company_name;

SELECT company_name,contract_id, metal
  FROM vendors JOIN contracts ON (vendors.vendor_id = contracts.vendor_id)
Where vendors.vendor_id > 1
GROUP BY company_name;

SELECT company_name,contract_id, metal
  FROM vendors JOIN contracts ON (vendors.vendor_id = contracts.vendor_id)
Where contracts.vendor_id > 1
GROUP BY company_name;

SELECT company_name,contract_id, metal, tonage
  FROM vendors JOIN contracts ON (vendors.vendor_id = contracts.vendor_id)
Where tonage > 2
GROUP BY company_name
ORDER BY tonage;


### Release 4: Enter Data
Enter some data for one of the tables. Make at least 10 entries.

Here is the vendors table:
<img src="..imgs/vendors_table.jpg" height="202" width="1020">

Here is the contracts table:
<img src="..imgs/contracts_table.jpg" height="113" width="724">

