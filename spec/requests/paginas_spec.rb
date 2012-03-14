require 'spec_helper'

describe "Paginas" do
  #describe "GET /paginas" do
  #  it "works! (now write some real specs)" do
  #    # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
  #    get paginas_index_path
  #    response.status.should be(200)
  #  end
  #end
  
  subject { page }
  
  shared_examples_for "all paginas" do
    it { should have_selector('h1', text: heading) }
    it { should have_selector('title', text: (page_title)) }
  end
  
  describe "Pagina 'Home'" do
    before { visit root_path }
    let(:heading) { 'Comunidad Manager' }
    let(:page_title) { 'Home' }
    
    it_should_behave_like "all paginas"
    
    it { should have_link('Registrate Ahora!') }
  end
   
  
end
