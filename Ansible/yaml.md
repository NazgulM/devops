# YAML

Yaml means yet another markup language. YAML is a human-readable data serialization language, just like XML and JSON.Serialization is about translating, converting, and wrapping up a data structure in another format.The data in the new format can be stored in a file or transmitted to another application or service over a network.

YAML is a widely used format for writing configuration files for different DevOps tools, programs, and applications because of its human-readable and intuitive syntax.

## XML VS JSON VS YAML - What's The Difference?

XML, JSON, and YAML are all used for creating configuration files and transferring data between applications.

XML
XML, which stands for Extensible Markup Language, was first introduced in 1996 and was designed for general-purpose use.

XML is a generalized markup language. It offers a structured yet flexible syntax and a defined document schema. This makes it a good choice when working with complex configurations that require a structured format and finer control over schema validation to ensure configurations always have the correct format.
With that said, XML's syntax can be verbose, redundant, and harder to read in comparison with other serialization languages.

```
<Employees>
    <Employee> 
        <name> John Doe </name>
        <department> Engineering </department>
        <country> USA </country>
    </Employee>
     <Employee> 
        <name> Kate James </name>
        <department> IT Support </department>
        <country> United Kingdom </country>
    </Employee>
</Employees>
```

JSON
JSON stands for JavaScript Object Notation and has been around since the early 2000s.

JSON was initially inspired by the JavaScript programming language, but it is not tied to only one language. Instead, it is a language-independent format.

Most modern programming languages have libraries for parsing and generating JSON data.

```
{
 "Employees": [
    {
   "name": "John Doe",
   "department": "Engineering",
   "country": "USA"
  },

  {
   "name": "Kate James",
   "department": "IT support",
   "country": "United Kingdom"
  }
 ]
}
```

JSON offers a much more readable, human-friendly, compact, and simple syntax compared to XML. It makes for a great format for storing and transferring information between web applications and servers over a network.

With that said, it may not offer the best support for complex configurations.

YAML
YAML, originally known as Yet Another Markup Language, was created in 2001 but now stands for YAML Ain't Markup Language.

YAML is an official strict superset of JSON despite looking very different from JSON.

YAML can do everything that JSON can and more. A valid YAML file can contain JSON, and JSON can transform into YAML.

YAML has the most human-readable, intuitive, and compact syntax for defining configurations compared to XML and JSON.

YAML uses indentation to define structure in the file, which is helpful if you are used to writing Python code and are familiar with the indentation style the language uses.

With that said, if you don't get the indentation and format right, it can lead to validation errors, making it not the friendliest for beginners.

```
Employees:
- name: John Doe
  department: Engineering
  country: USA
- name: Kate James
  department: IT support
  country: United Kingdom
```

Multi-Document Support in YAML
Before writing any YAML code, you can add three dashes (---) at the start of the file.

YAML allows you to have multiple YAML documents in a singe YAML file, making file organization much easier.

Separate each document with three dashes (---):

```
---
Employees:
- name: John Doe
  department: Engineering
  country: USA
- name: Kate James
  department: IT support
  country: United Kingdom
---
Fruit:
 - Oranges
 - Pears
 - Apples
```

YAML doesn't use symbols such as curly braces, square brackets, or opening or closing tags - just indentation.

Tabs in YAML
YAML doesn't allow you to use any tabs when creating indentation - use spaces instead.
Whitespace in YAML
Whitespace doesn't matter as long as child elements are indented inside the parent element.
Explicit Data Types in YAML
Although YAML auto-detects the data types in a file, you can specify the type of data you want to use.

To explicitly specify the type of data, use the !! symbol and the name of the data type before the value:

```
# parse this value as a string
date: !!str 2022-11-11

## parse this value as a float (it will be 1.0 instead of 1)
fave_number: !!float 1
```
An Introduction to YAML Syntax
Scalars
Scalars in YAML are the data on the page - strings, numbers, booleans, and nulls.

Let's see some examples of how to use each one.

In YAML, strings in some cases can be left unquoted, but you can also wrap them in single (' ') or double (" ") quotation marks:
```
A string in YAML!

'A string in YAML!'

"A string in YAML!"
```

If you want to write a string that spans across multiple lines and you want to preserve the line breaks, use the pipe symbol (|):
```
|
 I am message that spans multiple lines
 I go on and on across lines
 and lines
 and more lines
```

Alternatively, if you have a string in a YAML file that spans across multiple lines for readability, but you want the parser to interpret it as a single line string, you can use the > character, which will replace each line break with a space:
```
>
 I am message that spans
 multiple lines
 but I will be parsed
 on one line
```

Collections in YAML can be:

Sequences (lists/arrays)
Mappings (dictionaries/hashes)

That said, you can create a nested sequence (remember, use spaces - not tabs - to create the levels of indentation):
```
- HTML
- CSS
- JavaScript
 - React
 - Angular
 - Vue
```

List of objects:
```
Employees:
- name: John Doe
  department: Engineering
  country: USA
- name: Kate James
  department: IT support
  country: United Kingdom
```