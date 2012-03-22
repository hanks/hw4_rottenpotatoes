require 'spec_helper'

describe MoviesController do
  describe 'find movies with same director' do
    it 'should call the model method and perform search' do
       Movie.should_receive(:find_movies_with_same_director).with('director')
       post '/movies', {:director => 'director'}
    end
  end
end
