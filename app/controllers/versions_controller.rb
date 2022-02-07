class VersionsController < ApplicationController
  def index
    @audits = Audited::Audit.all
  end

  def show
    @auditss = Audited::Audit.where("auditable_id = ?", params[:id])
  end
end
