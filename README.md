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

```javascript
var arr = [{
  deeply: {
    nested: 'foo'
  }
}, {
  deeply: {
    nested: 'bar'
  }
}];

_.pluckDeep(arr, 'deeply.nested'); // ['foo', 'bar']
```

## License
[MIT](https://github.com/practicalmeteor/meteor-underscore-deep/blob/master/LICENSE.txt)
