string length:
counts the characters in a string.
to utilitze this "234234324".length
will give you numbers in string.


string strip:
removes whitespace from string.
eg. "  Helloo  ".string = "Helloo"

string split:
converts a string into an array
"I hate dogs".split = ["I", "hate", "dogs"]

starts_with?:
returns true if string starts with parameter
"hello".start_with?("hell")    => true
"hello".start_with?("heaven", "hell")     => true
"hello".start_with?("heaven", "paradise") => false

Arrays:
First reutns the first element of an array.
a = [ "q", "r", "s", "t" ]
a.first     => "q"
a.first(2)  => ["q", "r"]

delete_at:
will delete an item in an array for that number of the array
a = ["ant", "bat", "cat", "dog"]
a.delete_at(2)    => "cat"
a                 => ["ant", "bat", "dog"]
a.delete_at(99)   #=> nil

delete:
removes a specific named item from the array
a = [ "a", "b", "b", "b", "c" ]
a.delete("b")                   => "b"
a                               => ["a", "c"]
a.delete("z")                   => nil
a.delete("z") { "not found" }   => "not found"

pop:
removes the last item of an array
a = [ "a", "b", "c", "d" ]
a.pop     => "d"
a.pop(2)  => ["b", "c"]
a         => ["a"]

Hash
to_a:
converts a hash to nested Arrays
h = { "c" => 300, "a" => 100, "d" => 400, "c" => 300  }
h.to_a   => [["c", 300], ["a", 100], ["d", 400]]
the key and value will be their own array within a large array.

has_key?:
returns true with hash has that key.
h = { "a" => 100, "b" => 200 }
h.has_key?("a")   => true
h.has_key?("z")   => false

has_value?:
returns true if hash has that value.
h = { "a" => 100, "b" => 200 }
h.value?(100)   => true
h.value?(999)   => false

TIME
time:
creates new time object for current timeTime.now            => 2009-06-24 12:39:54 +0900

File
exist?:
returns true if file name exists

extname:
extname(path) → string click to toggle source
Returns the extension (the portion of file name in path starting from the last period).

If path is a dotfile, or starts with a period, then the starting dot is not dealt with the start of the extension.

An empty string will also be returned when the period is the last character in path.

File.extname("test.rb")         #=> ".rb"
File.extname("a/b/d/test.rb")   #=> ".rb"
File.extname(".a/b/d/test.rb")  #=> ".rb"
File.extname("foo.")            #=> ""
File.extname("test")            #=> ""
File.extname(".profile")        #=> ""
File.extname(".profile.sh")     #=> ".sh"
