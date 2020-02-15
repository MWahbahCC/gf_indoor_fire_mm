#include "SendMessage.hpp"

SendMessage::SendMessage(DataMessage* t_msg) {
    m_output_msg = t_msg;
}   

SendMessage::~SendMessage() {

}

void SendMessage::perform(){
    this->emit_message(m_output_msg);
    this->print_info();
}

void SendMessage::receive_msg_data(DataMessage*){

}