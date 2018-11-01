# Available Content

Each presentation can be read directly in GitHub by opening the `<presentation-name>.md` file.

Each presentation has a companion folder with used images and demos (they're referenced throughout the markdown files).

To see the pretty formatted version, check the [latest release](https://github.com/brunombsilva/slides/releases/latest) to access pdf versions of the slides.

# Markdown Slides

Presentation(s) written using

* [Markdown](https://daringfireball.net/projects/markdown/syntax) to create content
* [Remark](https://remarkjs.com/) to render content
* [Backslide](https://sinedied.github.io/backslide/) to serve and export content

## How to present

```bash
git clone

# Install backslide & decktape
npm install -g backslide decktape

# Build template javascript with dependencies
cd template && npm install && npm run build

# Serve presentations
bs serve

# Get PDF
decktape remark http://localhost:4100/git-advanced-topics.html git-advanced-topics.pdf
```

## How to write content

Create a new markdown file and use one of the existing presentations as a start. Reading Remark documentation helps a lot.

### Useful resources

* [Coloured Terminal Listings
in remark](http://joshbode.github.io/remark/ansi.html#1)
* http://nomnoml.com
