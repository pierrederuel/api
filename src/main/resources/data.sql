INSERT INTO `oauth_client_details` (`client_id`, `resource_ids`, `client_secret`, `scope`, `authorized_grant_types`, `web_server_redirect_uri`, `authorities`, `access_token_validity`, `refresh_token_validity`, `additional_information`, `autoapprove`) VALUES
('eneliaWeb', 'oauth2-resource', 'secret', 'read,write,trust', 'client_credentials,password,refresh_token', '', 'ROLE_CLIENT,ROLE_TRUSTED_CLIENT', 50000, 1500000, '{}', ''),
('eneliaAndroid', 'oauth2-resource', 'secret', 'read,write,trust', 'client_credentials,password,refresh_token', '', 'ROLE_CLIENT,ROLE_TRUSTED_CLIENT', 50000, 1500000, '{}', ''),
('eneliaIOS', 'oauth2-resource', 'secret', 'read,write,trust', 'client_credentials,password,refresh_token', '', 'ROLE_CLIENT,ROLE_TRUSTED_CLIENT', 50000, 1500000, '{}', '');

INSERT INTO `periode` (`id`, `date_debut`, `date_fin`) VALUES
(1, 0xaced00057372000d6a6176612e74696d652e536572955d84ba1b2248b20c00007870770703000007e1090178, 0xaced00057372000d6a6176612e74696d652e536572955d84ba1b2248b20c00007870770703000007e1091e78);

INSERT INTO `role` (`id`, `nom`) VALUES
(1, 'ROLE_TV'),
(2, 'ROLE_COMMERCIAL'),
(3, 'ROLE_PROSPECTEUR'),
(4, 'ROLE_MANAGER'),
(5, 'ROLE_ADMIN'),
(6, 'ROLE_SUPERADMIN');

INSERT INTO `agence` (`id`, `logo`, `nom`) VALUES
(1, 'img/avatar/0.jpg', 'Templemars');

INSERT INTO `employe` (`dtype`, `id`, `nom`, `photo`, `prenom`, `agence_id`) VALUES
('Manager', 1, 'Deschaume', 'img/avatar/1.jpg', 'Arnaud', 1),
('Commercial', 2, 'Hamedi', 'img/avatar/11.jpg', 'Sophiane', 1),
('Manager', 3, 'Legrand', 'img/avatar/12.jpg', 'Sylvain', 1),
('Manager', 4, 'Moisson', 'img/avatar/13.jpg', 'Pauline', 1),
('Prospecteur', 5, 'Schryve', 'img/avatar/13.jpg', 'Thibaut', 1),
('Prospecteur', 6, 'Ducrocq', 'img/avatar/13.jpg', 'Eloi', 1),
('Prospecteur', 7, 'Belkasmi', 'img/avatar/13.jpg', 'Kamal', 1),
('Prospecteur', 8, 'Meziani', 'img/avatar/13.jpg', 'Naji', 1),
('Prospecteur', 9, 'Kreutser', 'img/avatar/13.jpg', 'Ugo', 1),
('Prospecteur', 10, 'Rameaux', 'img/avatar/13.jpg', 'Medhi', 1),
('Prospecteur', 11, 'Pilarczyk', 'img/avatar/13.jpg', 'Yannick', 1),
('Prospecteur', 12, 'Leleu', 'img/avatar/13.jpg', 'Louis', 1),
('Prospecteur', 13, 'Ricart', 'img/avatar/13.jpg', 'Charlotte', 1),
('Prospecteur', 14, 'Halastara', 'img/avatar/13.jpg', 'Assia', 1),
('Prospecteur', 15, 'Lemaire', 'img/avatar/13.jpg', 'William', 1),
('Commercial', 16, 'Salkiki', 'img/avatar/11.jpg', 'Sofiane', 1),
('Commercial', 17, 'De Pizzol', 'img/avatar/11.jpg', 'Daniel', 1),
('Commercial', 18, 'Benkader', 'img/avatar/11.jpg', 'Yacine', 1),
('Commercial', 19, 'Simon', 'img/avatar/11.jpg', 'Samuel', 1),
('Commercial', 20, 'Wattiez', 'img/avatar/11.jpg', 'Laurent', 1),
('Commercial', 21, 'Despierre', 'img/avatar/11.jpg', 'Valentin', 1);

INSERT INTO `utilisateur` (`id`, `active`, `password`, `token`, `username`, `employe_id`) VALUES
(1, b'1', 'password', NULL, 'pierre.deruel', NULL),
(2, b'1', 'password', NULL, 'arnaud.deschaume', 1),
(3, b'1', 'password', NULL, 'sophiane.hamedi', 2),
(4, b'1', 'password', NULL, 'sylvain.legrand', 3),
(5, b'1', 'password', NULL, 'pauline.moisson', 4),
(6, b'1', 'password', NULL, 'thibaut.schryve', 5),
(7, b'1', 'password', NULL, 'eloi.ducrocq', 6),
(8, b'1', 'password', NULL, 'kamal.belkasmi', 7),
(9, b'1', 'password', NULL, 'naji.meziani', 8),
(10, b'1', 'password', NULL, 'ugo.kreutser', 9),
(11, b'1', 'password', NULL, 'medhi.rameaux', 10),
(12, b'1', 'password', NULL, 'yannick.pilarczyk', 11),
(13, b'1', 'password', NULL, 'louis.leleu', 12),
(14, b'1', 'password', NULL, 'charlotte.ricart', 13),
(15, b'1', 'password', NULL, 'assia.halastara', 14),
(16, b'1', 'password', NULL, 'william.lemaire', 15),
(17, b'1', 'password', NULL, 'sofiane.salkiki', 16),
(18, b'1', 'password', NULL, 'daniel.de pizzol', 17),
(19, b'1', 'password', NULL, 'yacine.benkader', 18),
(20, b'1', 'password', NULL, 'samuel.simon', 19),
(21, b'1', 'password', NULL, 'laurent.wattiez', 20),
(22, b'1', 'password', NULL, 'valentin.despierre', 21);

INSERT INTO `role_utilisateurs` (`roles_id`, `utilisateurs_id`) VALUES
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(2, 3),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(3, 13),
(3, 14),
(3, 15),
(3, 16),
(4, 3),
(4, 4),
(4, 5),
(4, 16),
(5, 2),
(6, 1);