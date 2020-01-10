from unittest import mock
import slack
from lighthouse.bot import Bot
import pytest

@pytest.fixture(scope='module')
def vcr_config():
    return {
        "filter_headers": [('authorization', 'REDACTED')],
    }

class TestBot():
    @pytest.mark.vcr()
    def test_no_exception_when_incorrect_arguments_are_given(self, mocker):
        """ Ensure that the bot does not crash when there is an error """
        data = {
            "user": "SomeUser",
            "command": "cmk ping grw134",
            "channel": "#monitoring",
        }
        bot = Bot()
        bot.event.handle_event(
            data["user"],
            data["command"],
            data["channel"],
        )
        
