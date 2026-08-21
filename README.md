# should2expect

## Description

Automatically convert Rspec should-style to expect-style expectations.

Rspec's `should` syntax has been discouraged since Rspec 3, and a suite written against it is tedious to bring across by hand. `should2expect` rewrites the files in place:

```ruby
it 'should have a name' do
  thing.name.should == 'x'
end
```

becomes

```ruby
it 'has a name' do
  expect(thing.name).to eq('x')
end
```

The example descriptions are rewritten along with the expectations, because `it 'should have a name'` reads oddly once nothing in the body says `should` any more.

## Installation

### 0. Have a recent version of Ruby installed

### 1a. Via Homebrew

```shell
$ brew tap thoran/tap
$ brew install thoran/tap/should2expect
```

### 1b. Manually

```shell
$ git clone https://github.com/thoran/should2expect
$ cp ./should2expect/bin/should2expect to your preferred executable path
$ chmod +x /path/to/should2expect
```

## Usage

### 1. The `*.rb` files where you stand

```shell
$ should2expect
```

### 2. A directory, walked recursively

```shell
$ should2expect spec
```

### 3. A single file, or a glob of your own

```shell
$ should2expect spec/models/thing_spec.rb
$ should2expect 'spec/**/*_spec.rb'
```

Quote the glob, or the shell expands it first and only the first file arrives.

## What it converts

| From | To |
| --- | --- |
| `thing.should == 'x'` | `expect(thing).to eq('x')` |
| `thing.should =~ /x/` | `expect(thing).to match(/x/)` |
| `thing.should_not be_nil` | `expect(thing).not_to be_nil` |
| `thing.should eq(nil)` | `expect(thing).to be_nil` |
| `thing.should_receive(:call)` | `expect(thing).to receive(:call)` |
| `thing.should_not_receive(:call)` | `expect(thing).not_to receive(:call)` |
| `Thing.any_instance.should_receive(:call)` | `expect_any_instance_of(Thing).to receive(:call)` |
| `thing.stub(:name)` | `allow(thing).to receive(:name)` |
| `thing.stub(name: 'y')` | `allow(thing).to receive(:name).and_return('y')` |
| `Thing.any_instance.stub(name: 'y')` | `allow_any_instance_of(Thing).to receive(:name).and_return('y')` |
| `it 'should have a name'` | `it 'has a name'` |
| `it 'should not blow up'` | `it 'does not blow up'` |
| `it 'should verify the thing'` | `it 'verifies the thing'` |
| `it 'should apply the rule'` | `it 'applies the rule'` |

`eq(nil)`, `eql(nil)` and `equal(nil)` all become `be_nil`, which satisfies no deprecation but reads better for the same test.

## Notes

1. Files are rewritten where they stand and there is no undo, so run this against a clean working tree and read the diff afterwards.
2. Without an argument only the `*.rb` files in the current directory are read, and not the tree below it. Name the directory to walk it.
3. A stub written with a hashrocket, `thing.stub(:name => 'y')`, converts to `receive(:name => 'y')` without the `and_return` the new-style `stub(name: 'y')` gets. Run [dehashrocketify](https://github.com/thoran/dehashrocketify) over the suite first and both forms come out the same.
4. Nothing is required beyond the standard library.

## Contributing

1. Fork it: `https://github.com/thoran/should2expect/fork`
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Create a new pull request
