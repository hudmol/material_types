require_relative '../../../selenium/spec/spec_helper'
require_relative '../../../indexer/app/lib/realtime_indexer'



describe "Material Types plugin user interface" do

  before(:all) do
    selenium_init($backend_start_fn, $frontend_start_fn)
    @indexer = RealtimeIndexer.new($backend, nil)
  end


  def run_index_round
    @last_sequence ||= 0
    @last_sequence = @indexer.run_index_round(@last_sequence)
  end


  after(:all) do
    report_sleep
    cleanup
  end


  def self.xdescribe(*stuff)
  end

  after(:each) do |group|
    if group.example.exception and ENV['SCREENSHOT_ON_ERROR']
      SeleniumTest.save_screenshot
    end
  end

  describe "Accessions with Material Types" do

    before(:all) do
      login_as_archivist
      @fourpartid = $driver.generate_4part_id
    end


    after(:all) do
      logout
    end


    it "allows adding material types to a new accession" do
      $driver.find_element(:link, "Create").click
      $driver.find_element(:link, "Accession").click
      $driver.clear_and_send_keys([:id, "accession_title_"], "a material accession")
      $driver.complete_4part_id("accession_id_%d_", @fourpartid)
      $driver.find_element(:css => '#accession_material_types_ .subrecord-form-heading .btn:not(.show-all)').click

      $driver.find_element(:id, 'accession_material_types__works_of_art_').click
      $driver.find_element(:id, 'accession_material_types__realia_').click
  
      $driver.click_and_wait_until_gone(:css => "form#accession_form button[type='submit']")
      $driver.click_and_wait_until_gone(:link => "a material accession")

      $driver.find_element_with_text('//div', /Works of Art/)
      $driver.find_element_with_text('//div', /Realia/)
    end

  end

end

