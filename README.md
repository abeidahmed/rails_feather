# rails_feather

Ruby on Rails views helper method for rendering beautiful feather icons. See all
the icons [here](https://feathericons.com).

## Installation

Add this line to your application's Gemfile:

```ruby
gem "rails_feather"
```

And then execute:

```bash
bundle install
```

Or install it yourself as:

```bash
gem install rails_feather
```

## Usage

After installing the gem, call `<%= feather_icon "activity" %>` on your `erb` template.
The first argument is the icon name. All the icons are listed [here](https://feathericons.com).

This will generate the following html:

```html
<svg
  version="1.1"
  width="24"
  height="24"
  viewBox="0 0 24 24"
  fill="none"
  stroke="currentColor"
  stroke-width="2"
  stroke-linecap="round"
  stroke-linejoin="round"
  aria-hidden="true"
>
  <polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline>
</svg>
```

## Handling the size of the icon

Specify a `size` param in the helper method to set the `height` and `width`
on the `svg` icon.

```erb
<%= feather_icon "activity", size: 20 %>
```

`size` defaults to `24` if not defined.

## Handling the `stroke-width` of the icon

Specify a `stroke_width` param in the helper method to set the `stroke-width`
on the `svg` icon.

```erb
<%= feather_icon "activity", stroke_width: 1 %>
```

`stroke_width` defaults to `2` if not defined.

## HTML attributes

Any `html` and `eruby` attribute syntax is supported, for eg:

```erb
<%= feather_icon "activity", class: "custom-class", aria: { label: "User activity" } %>
```

## Accessibility

`rails_feather` automatically sets `aria-hidden="true"` if `aria-label` is not
set, and if `aria-label` is set, then `role=img` is set on the `svg`.

## Development

- Clone the repo
- Run `bundle install` or `./bin/setup`
- Run `rake` to run the tests

## Contributing

Bug reports and pull requests are welcome. This project is intended to be a
safe, welcoming space for collaboration, and contributors are expected to adhere
to the [code of conduct](https://github.com/abeidahmed/rails_feather/blob/main/CODE_OF_CONDUCT.md).

Please refer to [CONTRIBUTING.md](https://github.com/abeidahmed/rails_feather/blob/main/CONTRIBUTING.md)
for further instructions.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the rails_feather project's codebases, issue trackers,
chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/abeidahmed/rails_feather/blob/main/CODE_OF_CONDUCT.md).
