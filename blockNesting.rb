
$nestingDepth = 0

def log descriptionofBlock, &block
  $nestingDepth += 1
  puts "\t" * $nestingDepth + 'Beginning ' + descriptionofBlock + '...'
  value = block.call.to_s
  puts "\t" * $nestingDepth + '...' + descriptionofBlock + ' finished. returning: ' + value
  $nestingDepth -= 1
end



log 'outer block' do
  false
  log 'some little block' do
    5
  end
  log 'yet another block' do
    'i like thai food'
  end
end

