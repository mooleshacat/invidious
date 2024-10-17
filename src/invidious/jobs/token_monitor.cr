
class Invidious::Jobs::MonitorCfgTokensJob < Invidious::Jobs::BaseJob
  include Invidious
  def begin
    loop do
        
      LOGGER.info("jobs: running MonitorCfgTokensJob job")
    
      ReloadTokens.get_tokens
    
      LOGGER.info("jobs: MonitorCfgTokensJob: pot: " + ReloadTokens.pot.as(String))
      LOGGER.info("jobs: MonitorCfgTokensJob: vdata: " + ReloadTokens.vdata.as(String))
    
      # crontab min is 1 minute
      sleep 1.minute
    end
  end
end
