# Tutor & Ko

Source for the tutoring website [tutorundko.de](https://tutorundko.de) (Vladyslav Petrenko).

The site is built with [Hugo](https://gohugo.io/) and deployed to GitHub Pages by the workflow in `.github/workflows/deploy-pages.yml`.

## Local preview

```bash
# Requires Hugo Extended 0.169 or later
./build.sh
python3 -m http.server 18080 --directory public
```

Then open http://127.0.0.1:18080/
