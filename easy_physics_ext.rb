require 'net/http'

class EasyPhysics
	def resetPassword(cookies, newpassword)
		http = Net::HTTP.new('clop.hit.edu.cn')
		reset_password_path = '/resetPassWord.action?password=' + newpassword + '&repassword=' + newpassword;
#puts reset_password_path
		reset_password_response = ''
		reset_password_response = http.get(reset_password_path, {'Cookie' => cookies})
		if reset_password_response.body.include?('SUCCESS') then
			puts 'success!'
		else
			puts 'failed!'
		end
	end
end
