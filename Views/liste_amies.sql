/*Liste d'amies pour le compte avec l'id=1*/

CREATE VIEW listes_amis_id1 AS
 SELECT account.first_name, account.last_name, account.nickname, profile_pic, send_invite.friendship_birthday 
 FROM account INNER JOIN send_invite 
  ON account.id_account = send_invite.id_account_sender
 WHERE id_account_receiver = 1 