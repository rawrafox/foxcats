# Queer Foxcats #

A collection of queer foxcat emoji.

These are based on [this emoji from Google’s Noto font](https://github.com/googlefonts/noto-emoji/blob/bf295c4/svg/emoji_u1f610.svg). The Noto font was released by Google under the [Apache 2.0 license](https://www.apache.org/licenses/LICENSE-2.0).

If is also based up the excellent [Queer Cats](https://github.com/ZoeBijl/QueerCats/).

Queer Foxcats is licensed under [CC0](https://creativecommons.org/share-your-work/public-domain/cc0/).

## What’s included?

A whole bunch of pride flags represented as blobby foxcats!

### Included flags

There are currently sixteen flags included:

- ace (asexual)
- agender
- arom (aromantic)
- autism
- bi (bisexual)
- genderfluid
- gerderqueer
- intersex
- lesbian
- male homosexual
- enby (non-binary)
- pan (pansexual)
- polyam (polyamory)
- polysexual
- pride
- sapphic (a flag for all lesbians)
- trans (transgender)

## Structure of project

- `/hearts` is where you’ll find the SVG-partials used to make the hearts, they are ripped from [Queer Cats](https://github.com/ZoeBijl/QueerCats/).
- `/parts` is where you'll find the SVG-partials used to make the bodyparts.
- `/png` contains exported PNG-files (128px).
- `/svg` contains exported SVG-files.
- `foxcat-generator` is the script to mash it all together.
- `foxcats.json` is what tells the script how to mash it all together.

To run the project, first you need to have Ruby and Node installed somehow. Then `npm install svgexport -g` for the SVG to PNG conversion, and lastly just `./foxcat-generator`.
