# Markdown Slides

Presentation(s) written using

* [Markdown](https://daringfireball.net/projects/markdown/syntax) to create content
* [Remark](https://remarkjs.com/) to render content
* [Backslide](https://sinedied.github.io/backslide/) to serve content

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

### Useful resources

* [Coloured Terminal Listings
in remark](http://joshbode.github.io/remark/ansi.html#1)
* http://nomnoml.com