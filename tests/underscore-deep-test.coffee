describe 'deep', ->
  it 'should get a deep value', (test)->
    obj =
      key1:
        key2:
          key3: 'val3'
    test.equal(_.deep(obj, 'key1.key2.key3'), 'val3')

  it 'should get a deep value with a key above', (test)->
    obj =
      key1:
        key2:
          key31: 'val31'
          key32: 'val32'
    test.equal(_.deep(obj, 'key1.key2.key32'), 'val32')

  it 'should get a deep value with a key above', (test)->
    obj =
      key1:
        key21: 'val21'
        key22: 'val22'
    test.equal(_.deep(obj, 'key1.key22'), 'val22')

  it 'should get a non-deep value', (test)->
    obj =
      key1: 'val1'
    test.equal(_.deep(obj, 'key1'), 'val1')

  it 'should return undefined if object is null', (test)->
    obj = null
    test.equal(_.deep(obj, 'key1'), undefined)

  it 'should return undefined if key is null', (test)->
    obj =
      key1: 'val1'
    test.equal(_.deep(obj, null), undefined)

  it 'should return null if key value is null', (test)->
    obj =
      key1:
        key2: null
    test.equal(_.deep(obj, 'key1.key2'), null)

  it 'should return undefined if key does not exist', (test)->
    obj =
      key1:
        key2: 'val2'
    test.equal(_.deep(obj, 'key1.key22'), undefined)

  it 'should return an array value', (test)->
    obj =
      key1:
        key2: ['val21', 'val22']
    test.equal(_.deep(obj, 'key1.key2'), ['val21', 'val22'])

  it 'should return an object value', (test)->
    obj =
      key1:
        key2:
          key3: 'val3'
    test.equal(_.deep(obj, 'key1.key2'), {key3: 'val3'})
