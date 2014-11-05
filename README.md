[![Build Status](https://travis-ci.org/practicalmeteor/meteor-underscore-deep.svg?branch=master)](https://travis-ci.org/practicalmeteor/meteor-underscore-deep)

## Overview

Gets the value of a nested property. Returns undefined if it doesn't exist. Example:

```javascript
var obj = {
  a: {
    b: {
      c: {
        d: 'val'
      }
    }
  }
};

// returns: 'val'
_.deep(obj, 'a.b.c.d'); 

// returns: {d: 'val'}
_.deep(obj, 'a.b.c');

// returns: undefined
_.deep(obj, 'a.b.e');
```

## License
[MIT](https://github.com/practicalmeteor/meteor-underscore-deep/blob/master/LICENSE.txt)
