/* delete records with duplicate emails while retaining those with the smallest
id number */

 delete p
 from person p, person r
 where p.id > r.id and r.email = p.email
