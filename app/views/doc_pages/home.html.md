# Docs

- This is the home page for your docs.  To edit this page, update your `app/views/docs/home.html.md` file.
- All standard Markdown features are supported.

---

## Table of Contents
  - [Getting Started](#getting-started)
  - [Adding Pages](#adding-pages)
  - [Customizing the Sidebar](#customizing-the-sidebar)
  - [Customize Syntax Highlighting Theme](#customize-syntax-highlighting-theme)

### <span id="getting-started">Getting Started</span>

  - Add the following to your `Gemfile`:

    ```ruby
    gem 'docs'
    ```
  - Run `bundle install`
  - Or install it yourself as:

    ```bash
    $ bundle add docs
    ```
  - Run `rails g docs install`


### <span id="adding-pages">Adding Pages</span>

- To add a new page, create a new file in the `app/views/docs` directory.  The file name will be the URL path for the page.  For example, `app/views/docs/my-new-page.html.md` will be available at `/docs/my-new-page`.

### <span id="customizing-the-views">Customizing the views</span>

- To customize the views, run `rails g docs copy_views`.
