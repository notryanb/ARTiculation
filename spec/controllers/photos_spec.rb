require_relative '../spec_helper'

describe 'PhotoLoader' do

  it 'will load images if they are in the public directory' do
    pictures = load_pictures
    p pictures
    expect(pictures.length).to_not eq(0)
  end
  
end