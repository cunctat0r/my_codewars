require_relative 'solution'

describe PaginationHelper do
  before do
    @helper = PaginationHelper.new(['a','b','c','d','e','f'], 4)
  end

  it 'page_count' do
    expect(@helper.page_count).to eq 2
  end

  it 'item_count' do
    expect(@helper.item_count).to eq 6
  end

  it 'page_item_count' do
    expect(@helper.page_item_count(0)).to eq 4
    expect(@helper.page_item_count(1)).to eq 2
    expect(@helper.page_item_count(2)).to eq -1
  end

  it 'page_index' do
    expect(@helper.page_index(5)).to eq 1
    expect(@helper.page_index(2)).to eq 0
    expect(@helper.page_index(20)).to eq -1
    expect(@helper.page_index(-10)).to eq -1
  end

end