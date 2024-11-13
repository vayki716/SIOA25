# Privilèges pour le callmanager 1
CREATE USER 'callman1'@'%' IDENTIFIED BY 'Man329*biRd4';
GRANT SELECT, INSERT, UPDATE, DELETE ON dbcentercall.* TO 'callman1'@'%' IDENTIFIED BY 'Man329*biRd4';

# Privilèges pour `calladmin1`@`localhost`
CREATE USER 'calladmin1'@'localhost' IDENTIFIED BY 'Adm!734+alF1';
GRANT ALL PRIVILEGES ON dbcentercall.* TO 'calladmin1'@'localhost' IDENTIFIED BY 'Adm!734+AlF1';

# Privilèges pour l''opérateur téléphonique 1
CREATE USER 'opera1'@'%' IDENTIFIED BY 'Ope872-Arm';
GRANT SELECT, INSERT, UPDATE ON dbcentercall.* TO 'opera1'@'%' IDENTIFIED BY 'Ope872-Arm';
