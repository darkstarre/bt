class Request < ApplicationRecord

  attr_accessor(:requester, :courseID, :pageName, :statusID, :levelID, :detail, :assignTo, :solution, :isReadyForQA,
               :isQAVerified, :dateStampReadyQA, :platform, :browser, :version, :flashVersion, :created, :modified,
               :applauseID)

  validates_presence_of(:requester, :courseID, :pageName, :statusID, :levelID, :detail, :assignTo, :solution, :isReadyForQA,
											 :isQAVerified, :dateStampReadyQA, :platform, :browser, :version, :flashVersion, :created, :modified,
											 :applauseID)

  
end
