const { sendMail } = require('@sap-cloud-sdk/mail-client');

module.exports = srv =>
    srv.on("sendMail", async (req) => {
        const mailConfig = {
            from: 'example@example.com',
            to: 'bogyo.kapitany@gmail.com',
            subject: "Test On Premise Destination",
            text: 'If you receive this e-mail, you are successful.'
        };
        sendMail({ destinationName: 'mail_destination' }, [mailConfig]);
        console.log("mail sent");
    });