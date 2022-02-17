def skip_animals(animals, skip)
    animals_skipped = []
    animals
        .each_with_index { |animal, index|
            animals_skipped.push("#{index}:#{animal}") if index >= skip
        }
    animals_skipped
end

puts skip_animals(['leopard', 'bear', 'fox', 'wolf'], 2).to_s
