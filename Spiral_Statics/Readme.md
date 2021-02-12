# MONPROJET - Mes pages "statiques"

Module Prestashop générique pour créer des pages statiques facilement.

1. **Step 1:** Changer le nom du module, le nom de la classe, du dossier et la description pour l'adapter au projet en cours.
2. **Step 2:** Pour ajouter des pages statiques, créer un fichier avec le nom de votre page (ex: about) suivi de l'extension `.php` dans le dossier `MONPROJET_mystaticpages/controllers/front/` (comme le fichier genericpage.php, vous pouvez également le copier et changer son nom afin de le modifier).
3. **Step 3:** Modifier le fichier créer en changeant le nom du controller (la partie generic page) et le nom du `template.tpl`.
4. **Setp 4:** Naviguez jusqu'au dossier `MONPROJET_mystaticpages/views/templates/front/` et créer votre fichier template ou copier le generic en changeant le nom.
5. **Step 5:** Modifier le fichier pour l'adapter à vos besoins.
6. **Step 6:** Pour finir retourner sur le fichier `MONPROJET_mystaticpages/MONPROJET_mystaticpages.php` et ajouter le nouveau controller a la liste des controllers du constructeur:

```php
public function __construct()
    {
        ...
        $this->controllers = array("genericpage");  // Ajouter les controllers pour toutes les pages "statiques"
        ...
    }
```

7. **Step 7:** Il n'y a plus qu'a aller dans le back office de prestashop, onglet parametre puis SEO et trafic et trouver le controller dans le tableau pour lui ajouter une URL personnalisée.
