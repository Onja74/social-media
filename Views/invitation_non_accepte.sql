/*Les invitations non acceptées pour le compte d'id=1 */
CREATE VIEW invitation_non_accepteid1 AS 
SELECT first_name, last_name, nickname, is_accepted FROM account 
INNER JOIN send_invite ON account.id_account = send_invite.id_account_receiver 
WHERE id_account = 1 AND is_accepted = false;