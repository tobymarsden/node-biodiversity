# Global Names Parser for Node.js

This module provides Node.js bindings for [`GNParser`](https://github.com/gnames/gnparser).

## Installation

```
npm install gnparser
```

## Usage

```
const gnparser = require('gnparser')
const name = 'Pardosa moesta Banks, 1892'
const parsed = gnparser.parse(name)
```

You may also pass multiple names which will be parsed as a batch:

```
const names = ['Pardosa moesta Banks, 1892', 'Parus major L.', 'Anthurium 'Ace of Spades']
const parsed = gnparser.parse(names)
```

## Versioning

This module's version matches that of the main GNParser Go project.
