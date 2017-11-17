def recursive_countdown(attempt)
  return if attempt.zero?
  puts attempt
  recursive_countdown(attempt-1)
end

recursive_countdown(10)