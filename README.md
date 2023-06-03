# Ux Website [![Website](https://img.shields.io/badge/Website-Visit-blue)](https://your-website-url.com)

This website is built using `mkdocs-material` and is dedicated to the topics of UX (User Experience). The content of this website is sourced from the following repositories:

- https://github.com/Aylarrazzaghi/Common-mistakes-in-Farsi
- https://github.com/Aylarrazzaghi/Persian-vocabulary-in-UXwriting

The site's information will be automatically updated with the repositories every 24 hours.

## Adding a New Repository
1. Add the Website Name to the README.md.
2. Let's assume I want to add a repository called `info-ux`, and the desired folder name is `test`.
We will replace the names as follows.
``` bash
   rm -rf test
   git clone https://github.com/Aylarrazzaghi/info-ux
   cd  info-ux
   git checkout-index  -f --prefix=../test/ README.md
   cd ..
   rm -rf info-ux
```
3. Refer to the mkdocs.yml file and add the repository there. Note that it's possible to add categories and subcategories. For more information, refer to the documentation of mkdocs-material.
```
 nav:
  ...
  - نام دلخواه:  test/README.md
```
Note: We assume that the added repository has a directory structure similar to previous repositories.

## Customizing the Homepage of Your Website

To customize the homepage of your website, follow these steps:

1. Go to the "docs" folder in your website's directory.
2. Locate the "index.md" file.
3. Open the "index.md" file and make the desired changes.
