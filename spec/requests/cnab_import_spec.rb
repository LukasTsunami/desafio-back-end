RSpec.describe 'POST /cnab_import', type: :request do
    context 'with wrong extension' do
        before { 
            post '/cnab_import', params: {
                cnab: Rack::Test::UploadedFile.new("#{Rails.root}/spec/fixtures/CNAB.cgi")
            }
        }

        it { expect(response).to have_http_status(:unsupported_media_type) }
      end
end