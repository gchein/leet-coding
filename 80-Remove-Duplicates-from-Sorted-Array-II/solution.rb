# @param {Integer[]} nums
# @return {Integer}

### SOLUÇÃO DADA PELO GPT, usou two pointers no lugar de fazer slicing e recompor o array
def remove_duplicates(nums)
  return 0 if nums.empty?

  # Pointer to place the next valid element
  j = 1
  # Start by allowing the first two elements by default
  count = 1

  # Start from the second element
  (1...nums.length).each do |i|
    if nums[i] == nums[i - 1]
      count += 1
    else
      count = 1
    end

    # Only keep the element if it's not appearing more than twice
    if count <= 2
      nums[j] = nums[i]
      j += 1
    end
  end

  j # Return the number of valid elements
end


# Exercise summary:
# remove duplicates
# each unique element appears at most twice

# The lenght of the result array (without more than 2 equal numbers) is k

# The original array nums should consist of:
### First k elements -> the result array
### The rest of the elements -> whatever

# The function must return k

### CONSTRAINT! ###
# Alter the nums array in-place, without allocating extra space for another data structure

### Solution Guide
# - Can't make it in Constant Time, since we have to inspect each element of the array
# - After that the best solution would be log(n) time, with consistent halving of the array
#   or a 'while' structure that converges
# - The other possible solutions should either be:
#   - Linear Time: a single run through the elements of the array
#   - n * log(n): usually generating subarrays through halving, and running through each subarray

# - Any other solution (n², 2^n, n!) is greatly discouraged


### SOLUTION IDEAS BELOW ###

### Solution 1:
# passa pelos elementos do array, cada índice sendo i
# checa se i + 2 é igual (se for, i+1 é igual por definição)
# Se for igual, entra em um looping 'while' ou 'for', contando quantas repetições tem
# reconstroi o array, sendo a primeira parte o inicio até aonde repete no máximo 1 vez, depois
# o array do ponto aonde deixa de repetir até o final, depois um array de nils, com a quantidade de
# repetições que ocorreram
# -> nums = nums[0 até o ultimo ponto permitido] + nums[primeiro que não repete até o final] + Array.new(nil, repetições)


# ### Solution 2:
# Começar iterando do final pro início, cada índice sendo i, começando em -1 e diminuindo de um em um
# Estritamente se os elementos i-1 e i+1 forem iguais ao elemento i, reconstroi o array nums:
# nums = nums[0 até i-2] + nums[i até nums.lenght] + num[i-1]
