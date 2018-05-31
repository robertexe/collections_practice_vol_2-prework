def begins_with_r(tools)
  tools.all? {
    |word| word[0] == "r"
  }
end
