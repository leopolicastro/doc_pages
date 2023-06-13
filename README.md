# DocPages
DocPages is a Rails engine that provides a simple way to add documentation to your Rails application using Markdown.  Create your documentation files in the `app/views/docs` directory with the `.html.md` extension and navigate to `/docs` to see it in action.

## Table of Contents
- [DocPages](#docpages)
  - [Table of Contents](#table-of-contents)
  - [Installation](#installation)
  - [Getting Started](#getting-started)
  - [Adding Pages](#adding-pages)
  - [Customizing the views](#customizing-the-views)
  - [Contributing](#contributing)
  - [License](#license)

## <span id="installation">Installation</span>
Add this line to your application's Gemfile:

```ruby
gem "doc_pages"
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install doc_pages
```
## <span id="getting-started">Getting Started</span>
- Run `rails g doc_pages install`

## <span id="adding-pages">Adding Pages</span>

- To add a new page, create a new file in the `app/views/docs` directory.  The file name will be the URL path for the page.  For example, `app/views/docs/my-new-page.html.md` will be available at `/docs/my-new-page`.

## <span id="customizing-the-views">Customizing the views</span>

- To customize the views, run `rails g docs copy_views`.

## Contributing
Issues and pull requests are welcome on GitHub at https://github.com/leopolicastro/doc_pages.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
