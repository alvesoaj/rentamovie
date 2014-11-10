class ApplicationController < ActionController::Base
    protect_from_forgery

    # Filtro do declarative authorization para todos os controllers
    before_filter { |c| Authorization.current_user = c.current_user }
    
    # mensagem em caso de usuario nao autorizado protected
    def permission_denied
        flash[:alert] = "Desculpe, voce nao tem permisao."
        redirect_to root_url
    end
end
