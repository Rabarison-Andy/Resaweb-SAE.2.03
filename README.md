# ResaWeb - RentMyPC

Projet étudiant MMI semestre 2

Lien vers mon site web (héberger sur O2Switch) :

https://resaweb.rabarison.butmmi.o2switch.site

Manipulation pour l'installer en local (procédure sur Windows et avec Wampserver64)

Installer Wampserver64 sur votre ordinateur (Lien Wamp : https://www.wampserver.com)

Aller dans l'explorateur de fichiers Windows et aller dans votre disque C, ou copier-coller ce chemin : c:\wamp64\www
et déposez y le dossier complet du site de dans un dossier au nom qui vous plaira.
Lancer Wampserver64 et aller dans votre menu "Localhost" afin de configurer la lecture de fichier php et d'une base de données en local.

Crée un Virtual host, donner lui un et le chemin de l'où se trouve vos fichiers pour le site.

Revenez sur votre panneau de contrôle de Wamp et clique sur le projet dont vous avez donné le nom, cela vous emmènera sur votre site si vous avez bien suivis la Procédure.

Pour installer la base de données qui va de pair avec le site, il vous faudra cliquer de nouveau sur l'icône de Wamp cette fois-ci aller dans phpMyAdmin et là y entrer les identifiants suivants : 'root' dans Utilisateur et '' dans Mots de passe (comme vous êtes en locale, vous n'avez pas besoin de mots de passe pour vous connecter).

Ensuite aller "Nouvelle base de données", lui donner un nom. Quand elle est crée, aller dedans puis dans "Importer" et choisirez le fichier "resaweb-rentmypc_BDD.sql" et voilà votre base donnée est enfin crée.