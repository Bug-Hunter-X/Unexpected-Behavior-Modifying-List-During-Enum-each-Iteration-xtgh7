# Elixir List Modification During Enum.each

This example demonstrates an issue where attempting to modify a list while iterating using `Enum.each` does not behave as expected.  The list remains unchanged.  This is due to Elixir's immutable data structures.  The solution showcases how to correctly modify a list using other approaches like `Enum.filter` or list comprehension.