-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 13, 2023 at 11:54 AM
-- Server version: 10.6.14-MariaDB
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cyclonev_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_accounts`
--

CREATE TABLE `ci_accounts` (
  `id` int(11) NOT NULL,
  `account_id` varchar(40) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `status` varchar(40) DEFAULT NULL,
  `savings_acc` varchar(40) DEFAULT NULL,
  `check_acc` varchar(40) DEFAULT NULL,
  `savings_balance` varchar(500) DEFAULT '0',
  `check_balance` varchar(500) DEFAULT '0',
  `email` varchar(40) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `phone` varchar(40) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `zip` varchar(40) DEFAULT NULL,
  `dob` varchar(40) DEFAULT NULL,
  `gender` varchar(40) DEFAULT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `pin` varchar(100) DEFAULT NULL,
  `cot` varchar(40) DEFAULT NULL,
  `tax` varchar(40) DEFAULT NULL,
  `imf` varchar(40) DEFAULT NULL,
  `otp` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT 'user-default.png',
  `creditCard` varchar(100) DEFAULT NULL,
  `expire` varchar(10) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `lastDate` varchar(255) DEFAULT NULL,
  `lastTime` varchar(255) DEFAULT NULL,
  `lastUrl` varchar(255) DEFAULT NULL,
  `allow_upload` varchar(100) DEFAULT '0',
  `allow_codes` varchar(100) DEFAULT '0',
  `allow_beneficiary` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ci_accounts`
--

INSERT INTO `ci_accounts` (`id`, `account_id`, `name`, `status`, `savings_acc`, `check_acc`, `savings_balance`, `check_balance`, `email`, `currency`, `password`, `phone`, `city`, `country`, `address`, `zip`, `dob`, `gender`, `occupation`, `pin`, `cot`, `tax`, `imf`, `otp`, `image`, `creditCard`, `expire`, `ip`, `lastDate`, `lastTime`, `lastUrl`, `allow_upload`, `allow_codes`, `allow_beneficiary`, `created_at`, `updated_at`) VALUES
(11, '8850345', 'demo', '', '005525108318', '005525108613', '0', '0', 'demo@user.com', '$', '$2a$08$SojDrZRNgOTyab0KcsdBtey/bCMTkb.UlnEMeFNkiGA5mDC4ylG2u', '111111111111', 'Ashmore and Cartier Island', '-1', 'address', '1111', 'Wednesday 7th of October 1992', 'Other', 'others', '2886', '110080365', '361-690', 'Ghb63', NULL, 'user-default.png', '3124', '10/26', '197.210.78.148', '11th October, 2023', '01:01 PM', 'https://cycloneverse.org/home/user', '0', '0', 1, '2023-10-11 09:27:16', '2023-10-11 13:01:43');

-- --------------------------------------------------------

--
-- Table structure for table `ci_admin`
--

CREATE TABLE `ci_admin` (
  `id` int(11) NOT NULL,
  `admin_username` varchar(100) DEFAULT NULL,
  `admin_email` varchar(100) DEFAULT NULL,
  `admin_password` varchar(100) DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT 0,
  `token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ci_admin`
--

INSERT INTO `ci_admin` (`id`, `admin_username`, `admin_email`, `admin_password`, `role`, `token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@demobank.com', '$P$BTr6i5LQL2nHmvTWVM9fmbfISyLxg50', 1, '01840dedadb91c1fac9971b5ee11bc4f', '2022-10-11 16:23:34', '2023-05-24 05:47:41');

-- --------------------------------------------------------

--
-- Table structure for table `ci_basic`
--

CREATE TABLE `ci_basic` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ci_basic`
--

INSERT INTO `ci_basic` (`id`, `title`, `value`, `created_at`, `updated_at`) VALUES
(1, 'about', 'Givens Hall Bank is dedicated to provide exceptional financial service to its members. Become a member today!', '2023-02-08 17:15:43', '2023-10-11 10:15:12'),
(2, 'terms', '<h3 style=\"line-height: 1.4; color: rgb(1, 26, 65); font-family: &quot;Source Sans Pro&quot;, sans-serif;\">1. Preface</h3><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">1.1 This client agreement (the “Agreement”)is entered by and between CryptoPro Investment Platform (the “Company”) and the person and/or legal entity that has applied to open a trading account at the Company’s Binary Options trading platform (the “Client”), according to the terms and conditions detailed in this agreement.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">1.2 Trading in Binary Options (“Trading”), means that a contract is being created which gives the Client the right to estimate the direction of change in price of an underlying asset, within a certain time frame determined by the Company. This trading instrument is different from trading in trading in ‘options’ in a traditional way, since there is a fixed return that is determined at the outset of the trade, such as: there is usually no Stop-Loss order and other features.</p><h3 style=\"line-height: 1.4; color: rgb(1, 26, 65); font-family: &quot;Source Sans Pro&quot;, sans-serif;\">2. The Trading Account</h3><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">2.1 Account Opening – Client may apply for an account through the Company’s website and the Company will accept such account opening application (the “Trading Account”) under the following terms: (i) the Company has received confirmation that the Client has agreed to enter into this Agreement (such confirmation can be made by checking the “I AGREE” button or link on the Company’s Internet website (the “Website”), followed by a completed application form (if applicable) and all other Client’s information required by the Company to be provided. The Client confirms that Client’s information is full, accurate and complete. If there is a change in the information provided by the Client, the Client must notify the Company immediately of any such change.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">2.2 Usage of the Trading Platform is done through the Account, by a limited license provided by the Company to the Client. The license is personal, non-transferable and is for persons who are older than 18 years old (or older legal age, if the law applicable to the Client’s jurisdictions requires a higher legal age) and subject to this Agreement. The Client will not transfer, assign, or enable other to make any use of the license, and/or give the Clients access codes to the Trading Account to anyone. Any damage caused to the Client, the Company and any third party due to breach of this Agreement by Client, shall be under the Client’s sole responsibility.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">2.3 Activation of the Trading Account – The Account will be activated by the Company as soon as the Company has identified the funds credited by the Client to the Trading Account. The Company may activate the Trading Account and permit trading in the Trading Account subject to such limitations, and to the satisfaction of such further requirements as the Company may impose. Where a Trading Account is not activated or is frozen, no funds held by the Company in respect of that Trading Account may be transferred back or to any other person until the Company is satisfied that all Applicable Regulations have been complied with.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">2.4 The Company may act, according to the Company’s sole discretion, as principal or as agent on the Client’s behalf in relation to any Transaction entered into pursuant to the Agreement. Therefore the Company may act as the counter party to the Clients Trading activity. The Client confirms that it acts as the sole principal and not as agent or trustee on behalf of someone else.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">2.5 The Client hereby represents and warrants that his engagement with the Company in this Agreement and his use of the Company’s services are in full compliance with the law applicable to the Client.</p><h3 style=\"line-height: 1.4; color: rgb(1, 26, 65); font-family: &quot;Source Sans Pro&quot;, sans-serif;\">3. The Transactions</h3><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">3.1 The Trading Platform enables Binary Options trading in exchange rates of Bitcoin digital currency. The Trading Platform displays indicative quotes of exchange rates of different financial instruments pairs, based on different financial information systems, as the most updated exchange rates in the international capital markets. For determining the quotes for different time periods, the platform is making mathematical calculations according to known and accepted capital markets formulas. It is acknowledged by both Parties that due to different calculation methods and other circumstances, different trading platforms and/or markets may display different price quotes.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">3.2 The Client will receive a predetermined pay-out if his binary option transaction expires in-the-Bitcoin, and he will lose a predetermined amount of his investment in the Transaction if the option expires out-of-the-Bitcoin. The predetermined amounts are a derivative of the collateral invested in the transaction by the Client, and will be published in the Trading Platform. The degree to which the option is in-the-Bitcoin or out-of-the-Bitcoin does not matter as it does with a traditional options</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">3.2 The Client will receive a predetermined pay-out if his binary option transaction expires in-the-Bitcoin, and he will lose a predetermined amount of his investment in the Transaction if the option expires out-of-the-Bitcoin. The predetermined amounts are a derivative of the collateral invested in the transaction by the Client, and will be published in the Trading Platform. The degree to which the option is in-the-Bitcoin or out-of-the-Bitcoin does not matter as it does with a traditional options</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">3.3 The Client authorizes the Company to rely and act on any order, request, instruction or other communication given or made (or purporting to be given or made) by the Client or any person authorized on the Client’s behalf, without further inquiry on the part of the Company as to the authenticity, genuineness authority or identity of the person giving or purporting to give such order, request, instruction or other communication. The Client will be responsible for and will be bound by all obligations entered into or assumed by the Company on behalf of the Client in consequence of or in connection with such orders, requests, instructions or other communication.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">3.4 The Company reserves the right, but not obliged to the following: to set, at its absolute discretion, limits and/or parameters to control the Client’s ability to place orders or to restrict the terms on which a Transaction may be made. Such limits and/or parameters may be amended, increased, decreased, removed or added to by the Company.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">3.5 Arbitrage/cancellation of orders and transactions – The Company does not allow actions or non-actions based on arbitrage calculations or other methods that are based on exploitation of different systems or platforms malfunction, delay, error etc. The Company is entitled, by its own discretion, to cancel any transaction that has been executed due or in connection with an error, system malfunction, breach of the Agreement by Client etc. The Company’s records will serve as decisive evidence to the correct quotes in the world capital markets and the wrong quotes given to the Client; The Company is entitled to correct or cancel any trade based according to the correct quotes.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">3.6 Cancel Feature Abuse Company offers a special cancellation feature that allows traders to cancel a trade within a few seconds of execution. Abuse of the cancellation feature can be considered market arbitrage and can result in forfeiture of profits. Company reserves the right to cancel a position if the cancellation feature is abused. The acceptable cancellation percentage cannot exceed 10% of the total number of executed trades. Cancelling more than 10% of the total number of executed trades is considered abuse of this feature and resulting profits may be forfeited from such abuse.</p><h3 style=\"line-height: 1.4; color: rgb(1, 26, 65); font-family: &quot;Source Sans Pro&quot;, sans-serif;\">4. Fees &amp; Charges</h3><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">4.1 Normally the company is supposed to pay a profit of 25% to 60% to clients after every month (28 working days) depending on the investment package</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">4.2 The company charges 10% commission and 5% Insurance.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">4.3 The company do not charge from investors’ earnings.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">4.4 The Company does not place charges for any transfer or withdrawal made by client depending on investment package.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">4.5 Investment package ranging from Intermediate plan and above enjoy more offers from the company.</p><h3 style=\"line-height: 1.4; color: rgb(1, 26, 65); font-family: &quot;Source Sans Pro&quot;, sans-serif;\">5. Borrowing</h3><h6 style=\"line-height: 1.4; color: rgb(1, 26, 65); font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Introduction</h6><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">5.1 We may agree to lend you money in accordance with this clause 5 and, for certain investment plans.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">5.2 You will need to pay 10% of the loan given in clause 5.1 as loan fees before loan is approved. Installment payments are accepted on negations with the company.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">5.3 Loan profits can be withdrawn thereafter with investors’ accounts in good trading conditions.</p><h6 style=\"line-height: 1.4; color: rgb(1, 26, 65); font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Repayment</h6><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">5.4 Investors’ can repay loans in full or repair on installments as agreed with the company either weekly or monthly.</p><h6 style=\"line-height: 1.4; color: rgb(1, 26, 65); font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Using Account Balances To reduce Liability</h6><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">5.5 If you owe us money on any account we may use money in that account or any other account (including in a fixed term deposit account) that you have with us to reduce or repay what you owe us. You authorize us to debit any of your accounts with us for any amounts due.</p><h6 style=\"line-height: 1.4; color: rgb(1, 26, 65); font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Loan Cancellation</h6><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">5.6 Loan request can be cancelled by email notifications within 24 hours of request or physical visit to our office as in the contact section of company website.</p><h3 style=\"line-height: 1.4; color: rgb(1, 26, 65); font-family: &quot;Source Sans Pro&quot;, sans-serif;\">6. Bonuses</h3><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">6.1 The Company offer bonuses to clients depending on the investment plan.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">6.2 The Company shall make provisions which would,allow clients with Investment packages of 4.000BTC - 5.000BTC to special bonus.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">6.3 Bonuses to the clients shall be made to encourage and promote profits.</p><h3 style=\"line-height: 1.4; color: rgb(1, 26, 65); font-family: &quot;Source Sans Pro&quot;, sans-serif;\">7. Privacy and Data Protection</h3><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">7.1 The Company shall hold some personal client information due to the nature of the Company’s business and relations with the Client. All data collected, whether on paper (hard copy) or on a computer (soft copy) is safeguarded in order to maintain the Client privacy.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">7.2 The Company shall be permitted to disclose and/or use the Client Information for the following purposes: (a) internal use, including with affiliated entities; (b) As permitted or required by law; (c) protection against or prevent actual or potential fraud or unauthorized transactions or behavior (d) computerized supervision of Client’s use of the services, review and/or supervision and/or development and/or maintenance of the quality of services; (e) to protect the Company’s rights or obligation to observe any applicable law.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">7.3 The Client hereby grants his/her permission to the Company to make use of his/her details in order to provide updates and/or information and/or promotion or marketing purposes through the Clients E-mail address or other contact information. Cancellation of this consent shall be done in writing by providing written notice to the Company, and shall apply to new publications that have not been sent.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">7.4 The Client agrees and acknowledges that the Company may record all conversations with the Client and monitor (and maintain a record of) all emails sent by or to the Company. All such records are the Company’s property and can be used by the Company, among other things, in the case of a dispute between the Company and the Client.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">7.5 Affiliation- the Company may share commissions and Insurance with its associates, introducing brokers or other third parties (“Affiliates”), or receive remuneration from them in respect of contracts entered into by the Company. Such Affiliates of the Company may be disclosed with Client’s information.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">7.6 The Company’s Trading Platform, Website or other services may require the use of ‘Cookies’.</p><h3 style=\"line-height: 1.4; color: rgb(1, 26, 65); font-family: &quot;Source Sans Pro&quot;, sans-serif;\">8. No Advice</h3><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">8.1 The Client represents that it has been solely responsible for making its own independent appraisal and investigations into the risks of any Transaction. The Client represents that it has sufficient knowledge, market sophistication and experience to make its own evaluation of the merits and risks of any Transaction. The Company does not advise its Clients in regard to the expected profitability of any Transaction. The Client acknowledges that he has read and understood the Risk Disclosure Document which sets out the nature and risks of Transactions to which this Agreement relates.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">8.2 Where the Company does provide market commentary or other information: (a) this is incidental to the Client’s relationship with the Company. (b) It is provided solely to enable the Client to make its own investment decisions.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">8.3 The Company shall not be responsible for the consequences of the Client acting upon such trading recommendations, market commentary or other information.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">8.4 The Client acknowledges that the Company shall not, in the absence of its fraud, willful default or gross negligence, be liable for any losses, costs, expenses or damages suffered by the Client arising from any inaccuracy or mistake in any information given to the Client.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">8.5 The Company is under no obligation to assess the appropriateness of any Transaction for a Client, to assess whether or not the Client has the necessary knowledge and experience to understand the nature of and risks associated with the Transactions. All risks related to the above are under the sole responsibility of the Client.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">8.6 The Company does not place tax on any client. All transactions made between the client and the Company is tax free.</p><h3 style=\"line-height: 1.4; color: rgb(1, 26, 65); font-family: &quot;Source Sans Pro&quot;, sans-serif;\">9. Closing an account and cancellation of the agreement</h3><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">9.1 Either party may terminate this Agreement by giving 1 (One) business days written notice by email to support@alienhost.co.uk, of termination to the other party. Either party may terminate this Agreement immediately in any case of any breach of this Agreement or event of Default by the other Party. Upon terminating notice of this Agreement, Client shall be under the obligation to close all open positions, otherwise, the notice shall become void, or the Company shall have the right to close all open positions without assuming any responsibility. Such closer may result in outcome that would be less favorable for the Client.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">9.2 Termination shall not affect any outstanding rights and obligations according to the applicable law and the provisions of this this Agreement.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">9.3 Upon termination, all transactions made by Either Party to the other Party will become immediately due.</p><h3 style=\"line-height: 1.4; color: rgb(1, 26, 65); font-family: &quot;Source Sans Pro&quot;, sans-serif;\">10. Limitations of Liability and Indemnities</h3><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">10.1 THE SERVICES OF THE COMPANY ARE PROVIDED “AS IS” AND “AS AVAILABLE”, AND COMPANY MAKES NO WARRANTIES OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, WARRANTIES OF MERCHANT ABILITY AND FITNESS FOR PARTICULAR PURPOSE. THE COMPANY DOES NOT WARRANT THAT ANY AFFILIATED SOFTWARE, SERVICES OR COMMUNICATION THAT MAY BE OFFERED OR USED BY THE CLIENT SHALL ALWAYS BE FREE OF VIRUSES OR OTHER HARMFUL COMPONENTS. THE COMPANY WILL NOT BE LIABLE FOR ANY DAMAGES OF ANY KIND ARISING FROM TRADING OR THE USE OF THE COMPANY’S SERVICES, INCLUDING, BUT NOT LIMITED TO DIRECT, INDIRECT, INCIDENTAL, PUNITIVE, AND CONSEQUENTIAL DAMAGES.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">10.2 Client acknowledges and agrees that the Trading Platform follows the relevant market, whether the Client is in front of his computer or not, and whether the Clients computer is switched on or not, and will exercises the order left by the Client if applicable.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">10.3 The Company over special secured services to the client via Insurance thus protecting the client from profit loss.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">10.4 The Company shall have the right to set-off any amount owed by the Company to the Client, against any debt or other obligation of the Client towards the Company. In any event of Default of Client (voluntary or involuntary insolvency procedures against the Client) all debts, future debts and other obligations of the Client towards the Company shall become immediately due.</p><h3 style=\"line-height: 1.4; color: rgb(1, 26, 65); font-family: &quot;Source Sans Pro&quot;, sans-serif;\">11. General Provisions</h3><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">11.1 Amendments – The Company has the right to amend the Agreement without obtaining any prior consent from the Client. If the Company makes any material change to the Agreement, it will give at least 10 (Ten) Business Days’ notice of such change to the Client. Such amendment will become effective on the date specified in the notice. Unless otherwise agreed, an amendment will not affect any outstanding order or Transaction or any legal rights or obligations which may already have arisen.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">11.2 Partial invalidity- If, at any time, any provision of this Agreement is or becomes illegal, invalid or unenforceable in any respect under the law of any jurisdiction, neither the legality, validity or enforce ability of the remaining provisions of this Agreement nor the legality, validity or enforce ability of such provision under the law of any other jurisdiction shall in any way be affected or impaired.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">11.3 Joint account- If the Trading Account is a joint account (on the name of more than one entity), then each of the entities in the Trading Account shall be authorized to represent the other entities towards the Company, with no requirement of any prior notice or approval from the other entities. Each of the entities in the Trading Account agrees that any notice or instruction given by the Company to any of the entities shall be considered as given to all the entities. In case of contradiction between instructions given to the Company by different entities, then the last instruction received by the Company will prevail.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">11.4 Notices – Unless otherwise agreed, all notices, instructions and other communications to be given by the Company shall be given to the address or fax number provided by the Client, or via e-mail or other electronic means, details of which are provided by the Client to the Company. Any complaint shall be directed to the Company’s client services department, who will investigate the complaint and make every effort to resolve it. Such a complaint should be made to: support@alienhost.co.uk</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">11.5 Governing Law – These Terms and any relationship between the Company and the Client shall be governed by law applicable in Denmark and subject to the exclusive jurisdiction of Danish courts. The Company shall have the right, in order to collect funds owed to the Company by Client or to protect the Company’s rights such as good-name, intellectual property, privacy etc. to immediately bring legal proceedings against the Client, in the Client’s residency and according to the Client’s residency applicable law.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">11.6 No Right to Assign- No rights under this Agreement shall be assignable nor any duties assumed by another party except to/by an affiliate of The Company. Upon assignment to an Affiliate of the Company, the terms of this Agreement may be amended to fit any applicable regulation effective upon the assignee, and Client hereby consent in advance to such regulatory modifications to this Agreement. This Agreement shall be binding upon and inure to the benefit of the successors heirs of the Client.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">11.7 Dormant Trading- If the Client will not perform any trading activity or his trading activity will be in very low volume, for the time period defined by the Company, or if the Client does not hold minimum funds in his Trading Account, defined by the Company, the Company may, charge the Trading Account with Dormant Trading commission, at a rate to be determined by the Company from time to time, close any open trade and/or the Client access to the Trading Account and/or terminate this Agreement.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">11.8 Language, Notices and Complaints – All communications between the Company and the Client will be in English or in any Language, suitable both to the Client and the Company.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">11.9 Force majeure – The Company shall not bear responsibility to any harm or any form which shall be caused to the Client in the event that such harm is the result of a force majeure and any outside event which is not in the control of the Company which influences Trading. The Company shall not bear any responsibility for any delay in communications and/or failure in the internet, including, without limitation, computer crashes or any other technical failure, whether caused by the telephone companies and various telecommunication lines, the ISP computers, the Company’s computers or the Customer’s Computers.</p>', '2023-02-08 17:15:43', '2023-05-16 05:18:38');

-- --------------------------------------------------------

--
-- Table structure for table `ci_beneficiary`
--

CREATE TABLE `ci_beneficiary` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `swift` varchar(100) DEFAULT NULL,
  `rtn` varchar(100) DEFAULT NULL,
  `acc_no` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT 'user-default.png',
  `email` varchar(255) NOT NULL,
  `donor` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ci_checks`
--

CREATE TABLE `ci_checks` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `front` varchar(255) DEFAULT NULL,
  `back` varchar(255) DEFAULT NULL,
  `remarks` mediumtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ci_checks`
--

INSERT INTO `ci_checks` (`id`, `user_id`, `front`, `back`, `remarks`, `created_at`, `updated_at`) VALUES
(1, '2', '1676409698_0f236cbb99844f5b8155.png', '1676409698_03be23d189357a52c542.png', NULL, '2023-02-14 21:21:38', '2023-05-16 05:18:38');

-- --------------------------------------------------------

--
-- Table structure for table `ci_email_template`
--

CREATE TABLE `ci_email_template` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `subject` mediumtext DEFAULT NULL,
  `body` mediumtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ci_email_template`
--

INSERT INTO `ci_email_template` (`id`, `name`, `subject`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Debit Alert', 'Transaction Alert [Debit: transaction_amount]', '<h3>Dear user_full_name,</h3>\r\n	<p>Your account has been Debited</p>\r\n <center>\r\n	<h4>transaction_amount</h4>\r\n	</center>\r\n	<p><strong style=\"color: site_theme_color\">Transaction Details:</strong></p>\r\n	<table class=\"mail-table\">\r\n  <tr>\r\n    <td class=\"table-left\">Account Type</td>\r\n    <td class=\"table-right\">account_type</td>\r\n  </tr>\r\n  <tr>\r\n    <td class=\"table-left\">Account Number</td>\r\n    <td class=\"table-right\">account_number</td>\r\n  </tr>\r\n		<tr>\r\n    <td class=\"table-left\">Account Name</td>\r\n    <td class=\"table-right\">account_name</td>\r\n  </tr>\r\n		<tr>\r\n    <td class=\"table-left\">Description</td>\r\n    <td class=\"table-right\">the_description</td>\r\n  </tr>\r\n		<tr>\r\n    <td class=\"table-left\">Transaction ID</td>\r\n    <td class=\"table-right\">reference_id</td>\r\n  </tr>\r\n		<tr>\r\n    <td class=\"table-left\">Date</td>\r\n    <td class=\"table-right\">current_date</td>\r\n  </tr>\r\n		<tr>\r\n    <td class=\"table-left\">Available Balance</td>\r\n    <td class=\"table-right\">available_balance</td>\r\n  </tr>\r\n</table>', '2023-02-11 11:36:30', '2023-05-16 05:18:38'),
(29, 'Credit Alert', 'Transaction Alert [Credit: transaction_amount]', '<h3>Dear user_full_name,</h3>\r\n	<p>Your account has been Credited</p>\r\n <center>\r\n	<h4>transaction_amount</h4>\r\n	</center>\r\n	<p><strong style=\"color: site_theme_color\">Transaction Details:</strong></p>\r\n	<table class=\"mail-table\">\r\n  <tr>\r\n    <td class=\"table-left\">Account Type</td>\r\n    <td class=\"table-right\">account_type</td>\r\n  </tr>\r\n  <tr>\r\n    <td class=\"table-left\">Account Number</td>\r\n    <td class=\"table-right\">account_number</td>\r\n  </tr>\r\n		<tr>\r\n    <td class=\"table-left\">Sender</td>\r\n    <td class=\"table-right\">the_sender</td>\r\n  </tr>\r\n		<tr>\r\n    <td class=\"table-left\">Description</td>\r\n    <td class=\"table-right\">the_description</td>\r\n  </tr>\r\n		<tr>\r\n    <td class=\"table-left\">Transaction ID</td>\r\n    <td class=\"table-right\">reference_id</td>\r\n  </tr>\r\n		<tr>\r\n    <td class=\"table-left\">Date</td>\r\n    <td class=\"table-right\">current_date</td>\r\n  </tr>\r\n		<tr>\r\n    <td class=\"table-left\">Available Balance</td>\r\n    <td class=\"table-right\">available_balance</td>\r\n  </tr>\r\n</table>', '2023-02-11 11:36:30', '2023-05-16 05:18:38'),
(28, 'Reset Password', 'Password Reset Validation', '<h3>Hello user_full_name,</h3>\r\n<p>\r\nYou have requested to reset your password<br/> \r\nKindly Login with the following password:\r\n</p>\r\n<h3>new_password</h3>\r\n<p>You are required to change your password immediately after login</p>', '2023-02-11 11:36:30', '2023-05-16 05:18:38'),
(26, 'Support Ticket', 'Support Ticket Notification', '<h3>New Support Ticket from user_full_name - user_email</h3>\r\n					<p><b>Title: </b>ticket_title</p>\r\n					<p><b>Department: </b>ticket_dept</p>\r\n           <strong>Content:</strong><br> ticket_description\r\n					<p>\r\n<br>\r\n<b>Date: </b>current_date</p>\r\n<br>\r\n<b>Reference: </b>ticket_reference', '2023-02-11 11:36:30', '2023-05-16 05:18:38'),
(27, 'Check Deposit', 'New Check Deposit', '<p>You have a new Check Deposit Upload<br> Details:</p><p><b>Name: </b>user_full_name</p><p><b>Email: </b>user_email</p><p><b>Remarks: </b>the_remarks</p><p><b>Date: </b>current_date</p><p><b>Front Photo: </b><a href=\\\"\\\\\"site_upload_folder/the_front\\\\\"\\\" target=\\\"\\\\\"_blank\\\\\"\\\">VIEW FRONT</a></p><p><b>Back Photo: </b><a href=\\\"\\\\\"site_upload_folder/the_back\\\\\"\\\" target=\\\"\\\\\"_blank\\\\\"\\\">VIEW BACK</a></p>', '2023-02-11 11:36:30', '2023-10-01 00:41:15'),
(30, 'Login Notification', 'New Login Notification', '<h3>Hi Admin</h3>\r\n			<p>A new login has been detected on <strong>site_url</strong><br> See details below</p>\r\n			<p><strong style=\"color: site_theme_color\">Date: </strong>current_date</p>\r\n			<p><strong style=\"color: site_theme_color\">Account Name: </strong>user_full_name</p>\r\n			<p><strong style=\"color: site_theme_color\">Account ID: </strong>acc_id</p>\r\n			<p><strong style=\"color: site_theme_color\">IP Address: </strong>ip_address</p>\r\n			<p><strong style=\"color: site_theme_color\">Location Details (From IP Address): </strong>login_location</p>\r\n', '2023-02-11 11:36:30', '2023-05-16 05:18:38'),
(31, 'OTP', 'site_name OTP Authentication', '<h3>Dear user_full_name,</h3>\r\n<p>Please approve your transaction with the One Time Passcode (OTP) below:</p>\r\n<h2 style=\"color: site_theme_color\">89012<br></h2>', '2023-02-11 11:36:30', '2023-10-01 00:38:49'),
(32, 'Deposit Request', 'Deposit Request', '<h4>New Deposit Request</h4>\r\n					<p>\r\n          <b>Name: </b>user_full_name<br>\r\n					<b>Email: </b>user_email<br>\r\n					<b>Amount: </b>transaction_amount<br>\r\n<b>Method: </b>the_coin<br>					<b>Transaction Reference: </b>the_transaction_ref<br>\r\n					<b>Date: </b>current_date\r\n					</p>', '2023-02-11 11:36:30', '2023-05-16 05:18:38'),
(33, 'Email', 'the_subject', 'the_message', '2023-02-11 11:36:30', '2023-05-16 05:18:38'),
(34, 'Transfer Notification', 'Transfer Notification', '<h3 style=\"font-family: -apple-system, BlinkMacSystemFont, &quot;Fira Sans&quot;, &quot;Helvetica Neue&quot;, &quot;Apple Color Emoji&quot;, sans-serif; color: rgb(54, 54, 66);\">Hello user_full_name</h3><p>A transfer has occured on the account below:</p><p><span style=\"font-weight: bolder;\">Name:&nbsp;</span>user_full_name</p><p><span style=\"font-weight: bolder;\">Account ID:</span><br>account_id<br><span style=\"font-weight: bolder;\">Transfer Type:&nbsp;</span>transfer_type</p><br><span style=\"font-weight: bolder;\">Date:&nbsp;</span>current_date<p></p><br><span style=\"font-weight: bolder;\">Reference:&nbsp;</span>reference<h3 style=\"font-family: -apple-system, BlinkMacSystemFont, \" fira=\"\" sans\",=\"\" \"helvetica=\"\" neue\",=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" sans-serif;=\"\" color:=\"\" rgb(54,=\"\" 54,=\"\" 66);\"=\"\"></h3>', '2023-02-11 11:36:30', '2023-08-04 06:03:22'),
(35, 'Transaction Approval', 'Transaction Approved', '<h3 style=\"font-family: -apple-system, BlinkMacSystemFont, &quot;Fira Sans&quot;, &quot;Helvetica Neue&quot;, &quot;Apple Color Emoji&quot;, sans-serif; color: rgb(54, 54, 66);\">Dear user_full_name,</h3><p>Congratulations!<br>Your Transaction has been confirmed and approved successfully.</p><p><span style=\"font-weight: bolder;\">Transaction Details:</span><br><span style=\"font-weight: bolder;\">Transaction Type:&nbsp;</span>transaction_type<br><span style=\"font-weight: bolder;\">Method:&nbsp;</span>transaction_method<br><span style=\"font-weight: bolder;\">Reference ID:&nbsp;</span>transaction_reference<br><span style=\"font-weight: bolder;\">Date Confirmed:&nbsp;</span>current_date</p><p>Login to your account and see more details</p><h3 style=\"font-family: -apple-system, BlinkMacSystemFont, \" fira=\"\" sans\",=\"\" \"helvetica=\"\" neue\",=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" sans-serif;=\"\" color:=\"\" rgb(54,=\"\" 54,=\"\" 66);\"=\"\"></h3>', '2023-02-11 11:36:30', '2023-08-04 05:52:38');

-- --------------------------------------------------------

--
-- Table structure for table `ci_faqs`
--

CREATE TABLE `ci_faqs` (
  `id` int(11) NOT NULL,
  `question` text DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ci_faqs`
--

INSERT INTO `ci_faqs` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(3, 'Is the company registered and regulated', '<p><font color=\"#011f4c\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Yes, our Company is totally a legal platform licensed by the Securities and Exchange Commission&nbsp;to carry out financial activities in over 105 countries?</span></font><br></p>', '2023-02-08 19:56:49', '2023-05-16 05:18:38'),
(4, 'What is the field of activity of the company?', '<p>The company is engaged in cryptocurrency and Forex trading. Our staff of highly qualified traders and financial experts shows high profit rates from year to year. The company\'s priorities are access to international markets and long-term cooperation with investors.<br></p>', '2023-02-08 20:12:08', '2023-05-16 05:18:38'),
(5, 'Who can be a Customer of Givens Hall Bank?', '<p>Everyone can be a Customer of Givens Hall Bank, but he\\she must be not less 18 years old.<br></p>', '2023-02-08 20:12:46', '2023-10-11 10:16:09'),
(6, 'How can I become an investor in the company?', '<p>You may become a client of the company and it is totally free of charge. All you need is to sign up and fill all required fields. It takes less than 2 minutes to complete sign up.<br></p>', '2023-02-08 20:15:33', '2023-05-16 05:18:38'),
(7, 'How reliable is the company in terms of security and personal data?', '<p>We pay great attention to security and privacy. All information on our website is protected by SSL. We do not divulge any personal data of our customers to third parties. Your participation is strictly confidential.<br></p>', '2023-02-08 20:16:20', '2023-05-16 05:18:38'),
(8, 'Is there a KYC verification process?', '<p>Yes, we do require verification documents confirming the identity, address or origin of account owner.<br></p>', '2023-02-08 20:16:57', '2023-05-16 05:18:38');

-- --------------------------------------------------------

--
-- Table structure for table `ci_news`
--

CREATE TABLE `ci_news` (
  `id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `body` longtext DEFAULT NULL,
  `status` varchar(2) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ci_news`
--

INSERT INTO `ci_news` (`id`, `title`, `body`, `status`, `created_at`, `updated_at`) VALUES
(1, 'CryptoPro Investment Script', '&lt;p&gt;&lt;font face=&quot;pp-sans-big-regular, Helvetica, Arial, sans-serif&quot; color=&quot;#0c0c0d&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;Welcome to CryptoPro Investment Script Crafted by the Kinsmen Team. Hwo&lt;/span&gt;&lt;/font&gt;&lt;br&gt;&lt;/p&gt;', '0', '2022-10-11 17:06:13', '2023-10-11 10:16:55');

-- --------------------------------------------------------

--
-- Table structure for table `ci_notifications`
--

CREATE TABLE `ci_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `notice` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ci_payment_gateways`
--

CREATE TABLE `ci_payment_gateways` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `ticker` varchar(10) DEFAULT NULL,
  `api` int(11) NOT NULL DEFAULT 0,
  `barcode` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ci_payment_gateways`
--

INSERT INTO `ci_payment_gateways` (`id`, `name`, `status`, `ticker`, `api`, `barcode`, `created_at`, `updated_at`) VALUES
(36, 'Bitcoin (BTC)', 1, 'btc', 0, 1, '2022-11-11 10:36:51', '2023-05-16 05:18:38');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `data` blob NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `data`, `timestamp`) VALUES
('cf9cdfcf833cfe225704e7cb163d674df2feaa15', '102.89.47.68', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363131393135373b5f63695f70726576696f75735f75726c7c733a34333a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f61646d696e2f77616c6c657473223b61646d696e7c733a353a2261646d696e223b757365725f69647c733a323a223130223b, '2023-10-01 00:12:39'),
('60f2f38a5fe8c8211265a3f6fda2f8756c1feb48', '102.89.46.161', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363131393031393b5f63695f70726576696f75735f75726c7c733a33303a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f223b, '2023-10-01 00:10:19'),
('dd9e7123c3a7369ad99a4a7bd97f9c90933d5d09', '40.77.167.19', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363132323536323b5f63695f70726576696f75735f75726c7c733a33363a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f626f72726f77223b, '2023-10-01 01:09:22'),
('bc9209a7748c236025dff5f20dbd5dda1b413e58', '103.225.200.108', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363132373635363b5f63695f70726576696f75735f75726c7c733a34363a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f637573746f6d65722d737570706f7274223b, '2023-10-01 02:34:23'),
('e437e34486aae5fc6f803d37661101dbacc1c328', '179.43.167.145', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363133303036393b5f63695f70726576696f75735f75726c7c733a33303a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f223b, '2023-10-01 03:14:29'),
('f492e23c790d17123dc7e9ebc3fd6723646ff791', '102.89.32.70', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363134303633393b5f63695f70726576696f75735f75726c7c733a34343a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f61646d696e2f73657474696e6773223b61646d696e7c733a353a2261646d696e223b, '2023-10-01 06:10:40'),
('3437cf0b81badf16fb43cf6105a46ce30f75977c', '102.89.32.83', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363134303634343b5f63695f70726576696f75735f75726c7c733a36323a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f757365722f4163636f756e742f5f5f736572766963652d776f726b65722e6a73223b757365725f69647c733a323a223130223b, '2023-10-01 06:12:17'),
('c9cc14937e3726562d1156d433d95377b0c70d19', '102.89.34.19', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363134303033313b, '2023-10-01 06:00:31'),
('31210e6b8d6f488bdab925b16f5ae8c343ffef88', '102.89.32.83', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363134333134373b5f63695f70726576696f75735f75726c7c733a33303a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f223b, '2023-10-01 06:52:30'),
('9a75abe71f533184e01403777de78f3ec82431ee', '102.89.34.213', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363139323336373b5f63695f70726576696f75735f75726c7c733a3130313a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f617574682f61646d696e3f75726c3d68747470732533412532462532466379636c6f6e6576657273652e6f7267253246686f6d6525324661646d696e25324673657474696e6773223b, '2023-10-01 20:32:49'),
('a61819f42eb9a3ab594e8729c0f062858b4f54f0', '102.89.46.30', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363139343631383b5f63695f70726576696f75735f75726c7c733a33303a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f223b, '2023-10-01 21:10:50'),
('9ad6f2fef0d4d1716917e9164631f58a8f642ca1', '157.55.39.56', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363231383536343b5f63695f70726576696f75735f75726c7c733a35323a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f636865636b696e672d6163636f756e7473223b, '2023-10-02 03:49:24'),
('32a02d8b0f5a99fa17bb7972d827bb2b65349e0a', '157.55.39.6', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363235393638363b5f63695f70726576696f75735f75726c7c733a33363a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f626f72726f77223b, '2023-10-02 15:14:46'),
('450ed5a27526406a39eb5c13eaf67f9250ce9bea', '157.55.39.6', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363235393638363b5f63695f70726576696f75735f75726c7c733a35343a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b2f62616e6b2f62616e6b2f66617173223b, '2023-10-02 15:14:46'),
('606c0d46b99f8be9460b6f22e63830c375282ffb', '40.77.167.48', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363534353431343b5f63695f70726576696f75735f75726c7c733a33363a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f626f72726f77223b, '2023-10-05 22:36:54'),
('e07fae7a59ca67735cb9850bdc140cce3aad2627', '197.210.28.111', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363534393731373b5f63695f70726576696f75735f75726c7c733a33303a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f223b, '2023-10-05 23:48:51'),
('f21c0edb6291af3fee847ce8b1650156542e2401', '197.210.28.111', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363535343537373b5f63695f70726576696f75735f75726c7c733a33303a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f223b, '2023-10-06 01:09:37'),
('fc9a4ae64cbfab151242fbc8278f0d9963f9e8af', '105.112.208.60', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363631373735303b5f63695f70726576696f75735f75726c7c733a33343a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f75736572223b757365725f69647c733a313a2236223b, '2023-10-06 18:44:06'),
('246d448ecc8471b8959994e678726bb4567cb68d', '197.210.78.112', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363631373532323b5f63695f70726576696f75735f75726c7c733a33303a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f223b, '2023-10-06 18:38:44'),
('1164c4b44eb09659f781f72a5486a055a5883d6b', '149.34.245.213', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363632373732373b5f63695f70726576696f75735f75726c7c733a34363a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f637573746f6d65722d737570706f7274223b, '2023-10-06 21:28:48'),
('0a22abdfb0dcb1f7a5b8806e8e85fa637f4af354', '82.165.224.207', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363639323033343b5f63695f70726576696f75735f75726c7c733a33303a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f223b, '2023-10-07 15:20:34'),
('346a44eb3b372ef145f338a61fb321db668800dd', '82.165.224.247', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363639323131333b5f63695f70726576696f75735f75726c7c733a33383a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f61626f75742d7573223b, '2023-10-07 15:21:53'),
('f00d4faf1b42fbad61eb13639b915d0ccab00d1c', '82.165.224.231', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363639323131373b5f63695f70726576696f75735f75726c7c733a34343a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f707269766163792d706f6c696379223b, '2023-10-07 15:21:57'),
('0ba0231a142ab3c80d9eb239cf833de22b900b64', '82.165.224.247', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363639323633393b5f63695f70726576696f75735f75726c7c733a34323a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f6372656469742d6361726473223b, '2023-10-07 15:30:39'),
('692dba9d13b3db0f9f56351273aed7d563236984', '82.165.224.199', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363639323634313b, '2023-10-07 15:30:41'),
('a2c01c0242ba89e643b5b1f2b49f71c7ed610acd', '82.165.224.239', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363639323634323b5f63695f70726576696f75735f75726c7c733a33343a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b223b, '2023-10-07 15:30:42'),
('f2c0dc5ac97cc7017f9dd1ce97e586b29603d604', '82.165.224.143', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363639323634323b5f63695f70726576696f75735f75726c7c733a33343a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f66617173223b, '2023-10-07 15:30:43'),
('d27d5c032c488dde77b578c5dd7a5c9834bb79ce', '82.165.224.191', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363639323634333b5f63695f70726576696f75735f75726c7c733a33363a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f626f72726f77223b, '2023-10-07 15:30:43'),
('d7c207d7822fe103f4f635bafe8011c65b29abe6', '82.165.224.159', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363639323634353b5f63695f70726576696f75735f75726c7c733a33373a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f63617265657273223b, '2023-10-07 15:30:45'),
('1ef7c58c6395c37b1872bbe82b7e4d91e08683c9', '82.165.224.191', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363639323634353b5f63695f70726576696f75735f75726c7c733a34313a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f676976696e672d6261636b223b, '2023-10-07 15:30:45'),
('abf6dd9e183a1c47f692eb110ba38274b5d73dcc', '82.165.224.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363639323634363b5f63695f70726576696f75735f75726c7c733a33343a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f6e657773223b, '2023-10-07 15:30:46'),
('947c7824dc4293a0577f46568d5a6bad20bad324', '82.165.224.199', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363639323634383b5f63695f70726576696f75735f75726c7c733a34363a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f637573746f6d65722d737570706f7274223b, '2023-10-07 15:30:48'),
('741faf060a6c88ba1e2e9cfa4ea322a94c63c93d', '82.165.224.231', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363639323634393b5f63695f70726576696f75735f75726c7c733a34363a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f627573696e6573732d62616e6b696e67223b, '2023-10-07 15:30:49'),
('312ff0ba5f3af107b4bb8e1039027f89fc31f099', '82.165.224.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363639323634393b, '2023-10-07 15:30:49'),
('4d999b8468ee3b29d6fc4b3378ea17a9efe342ad', '82.165.224.183', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363639323635303b5f63695f70726576696f75735f75726c7c733a33363a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f696e76657374223b, '2023-10-07 15:30:50'),
('71d727d853c6adf494f0d2715db57348b000378a', '82.165.224.199', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363639323635303b5f63695f70726576696f75735f75726c7c733a36313a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f686f772d746f2d736176652d666f722d73756d6d65722d7661636174696f6e223b, '2023-10-07 15:30:50'),
('6abb7ee4791fbb4184d8f5029f7a7ad4b5012c59', '40.77.167.61', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363931353132343b5f63695f70726576696f75735f75726c7c733a33363a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f626f72726f77223b, '2023-10-10 05:18:44'),
('47d57720329db622593b7914275c5b0ef5390a2f', '40.77.167.25', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363933333138363b5f63695f70726576696f75735f75726c7c733a33303a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f223b, '2023-10-10 10:19:46'),
('5b86b3c01948ad98f18bc8334d7149e2f8bcde46', '40.77.189.38', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363933343137383b, '2023-10-10 10:36:19'),
('77645c561baeb56ad9915b4dc3b61373a61c5f06', '40.77.188.134', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363933343138313b, '2023-10-10 10:36:21'),
('591170acb0ee152dc0af0dc3d6a96f7c3d8b62f3', '40.77.188.235', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363933343138313b, '2023-10-10 10:36:21'),
('f7a57f56e98fa1c8ceee7fbff2bc0f83c1f51024', '54.36.149.4', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363934323339343b5f63695f70726576696f75735f75726c7c733a35373a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b2f6372656469742d63617264732e68746d6c223b, '2023-10-10 12:53:14'),
('6079be4e33b06c2613c21bbe90d23ff91bb681a5', '54.36.148.144', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363934353230303b5f63695f70726576696f75735f75726c7c733a33393a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b223b, '2023-10-10 13:40:00'),
('fa05de8169cb9e32b291c26ad0586986d298f6f0', '54.36.148.221', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363935303733333b5f63695f70726576696f75735f75726c7c733a34313a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f626f72726f77223b, '2023-10-10 15:12:13'),
('7e375551edf8bc083e83a1168e53c0cd6d7ac943', '54.36.148.162', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363935353130363b5f63695f70726576696f75735f75726c7c733a35313a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f637573746f6d65722d737570706f7274223b, '2023-10-10 16:25:06'),
('d718addb5b9cc74c2cd223cb506638da18cb948b', '54.36.149.93', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363935363636393b5f63695f70726576696f75735f75726c7c733a33393a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f66617173223b, '2023-10-10 16:51:09'),
('7d0d65d49cd427481ff350af6d547fe1c0df9983', '54.36.148.211', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363935383239383b5f63695f70726576696f75735f75726c7c733a34363a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f676976696e672d6261636b223b, '2023-10-10 17:18:18'),
('eec1ced3b338e21f129d801e3c1455170ed11302', '54.36.148.177', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363935393934343b5f63695f70726576696f75735f75726c7c733a34313a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f696e76657374223b, '2023-10-10 17:45:44'),
('72463b18969e62317cdd0d8deb9ed3803ecaa4e7', '54.36.148.230', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363936313433313b5f63695f70726576696f75735f75726c7c733a33393a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f73617665223b, '2023-10-10 18:10:31'),
('43efd847a0c7de2044487478be0e0d15875b939c', '54.36.148.49', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363936323532323b5f63695f70726576696f75735f75726c7c733a33393a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f6e657773223b, '2023-10-10 18:28:42'),
('b5436546a79c700cb88e7e01e2f39628aa4b7e6d', '54.36.148.223', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363936333539343b5f63695f70726576696f75735f75726c7c733a34393a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f707269766163792d706f6c696379223b, '2023-10-10 18:46:34'),
('423e8658db9d8b3e76cc853061ecef959ea81d06', '54.36.148.195', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363936343039373b5f63695f70726576696f75735f75726c7c733a37353a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f73696d706c652d776179732d746f2d6d616e6167652d612d636865636b696e672d6163636f756e74223b, '2023-10-10 18:54:57'),
('6fd04a9488743037e0f5ed87b69e27ab5a21bf7f', '54.36.148.107', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363936343630323b5f63695f70726576696f75735f75726c7c733a34383a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b2f61626f75742d7573223b, '2023-10-10 19:03:22'),
('89bf8e4897913735b4f44b613b516e8dfb77eed5', '54.36.149.45', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363936353132343b5f63695f70726576696f75735f75726c7c733a34343a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b2f66617173223b, '2023-10-10 19:12:04'),
('933232d05f7e310b9161301122120a13ba6b766a', '54.36.148.246', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363936353638323b5f63695f70726576696f75735f75726c7c733a35313a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b2f676976696e672d6261636b223b, '2023-10-10 19:21:22'),
('0a4ef5c07605153b783d31468d6970039eafd327', '54.36.148.189', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363936363232303b5f63695f70726576696f75735f75726c7c733a36393a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f7461782d636865636b6c6973742d352d7468696e67732d746f2d72656d656d626572223b, '2023-10-10 19:30:20'),
('7b4a45904ff65dfd81fca1fcfee2b7f94ea9572e', '54.36.148.49', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363936363734323b5f63695f70726576696f75735f75726c7c733a35343a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b2f707269766163792d706f6c696379223b, '2023-10-10 19:39:02'),
('f986ce2bebdea97fe98036bc14102ccad6f5246f', '54.36.148.66', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363936373235343b5f63695f70726576696f75735f75726c7c733a34343a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b2f73617665223b, '2023-10-10 19:47:34'),
('4cfe7fcf297a07d71f179d47a74a6b019746ed58', '54.36.148.99', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363936373832333b5f63695f70726576696f75735f75726c7c733a34363a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b2f696e76657374223b, '2023-10-10 19:57:03'),
('f892792ea3e5bc71e77c39e38c19de7954e3051e', '54.36.148.166', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363936383335353b5f63695f70726576696f75735f75726c7c733a38303a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b2f73696d706c652d776179732d746f2d6d616e6167652d612d636865636b696e672d6163636f756e74223b, '2023-10-10 20:05:55'),
('1595c3353c345c5a403b1a8a1b423b54a2830bda', '54.36.148.208', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363936383932353b5f63695f70726576696f75735f75726c7c733a34343a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b2f6e657773223b, '2023-10-10 20:15:25'),
('a5d8ae12163d954e683bfe2f5dac69e11b6b75af', '54.36.148.96', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363936393432303b5f63695f70726576696f75735f75726c7c733a34363a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b2f626f72726f77223b, '2023-10-10 20:23:40'),
('511f37731b8b5cdbb07c49178207161c2e7c61a3', '54.36.149.26', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363936393739313b5f63695f70726576696f75735f75726c7c733a34323a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f63617265657273223b, '2023-10-10 20:29:51'),
('d2550e49a4f68006bb9b7d9dee161cc4042746eb', '54.36.148.126', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363937313830373b5f63695f70726576696f75735f75726c7c733a34373a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b2f63617265657273223b, '2023-10-10 21:03:27'),
('a3416ecaf6b55dbeebf00125f6517ab791d72291', '51.158.100.53', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363937323235383b5f63695f70726576696f75735f75726c7c733a33303a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f223b, '2023-10-10 21:10:58'),
('a65e6755242f202e4715a5d0234d908d4e31ab06', '54.36.148.31', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363937323531333b5f63695f70726576696f75735f75726c7c733a35373a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b2f636865636b696e672d6163636f756e7473223b, '2023-10-10 21:15:13'),
('f3d274c7202650723f9775fe98eaf123196f9ce0', '54.36.148.221', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363937333139333b5f63695f70726576696f75735f75726c7c733a35323a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b2f6372656469742d6361726473223b, '2023-10-10 21:26:33'),
('0298f3f17ffc8d1ad21bebb13d120519002f952f', '54.36.148.44', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363937333930343b5f63695f70726576696f75735f75726c7c733a37343a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b2f7461782d636865636b6c6973742d352d7468696e67732d746f2d72656d656d626572223b, '2023-10-10 21:38:24'),
('c4769ad7593f714542c1b9cc123316b0aa05d7e1', '54.36.148.195', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363937353035323b5f63695f70726576696f75735f75726c7c733a34383a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b2f7061796d656e7473223b, '2023-10-10 21:57:32'),
('3810059a0a8bd23d554c08370542e6b15d1f02d4', '54.36.148.224', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363937353831393b5f63695f70726576696f75735f75726c7c733a34333a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f61626f75742d7573223b, '2023-10-10 22:10:19'),
('4e3c525368063eb25eb31032be46e1da71b80259', '54.36.148.93', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363937363534373b5f63695f70726576696f75735f75726c7c733a34333a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f7061796d656e7473223b, '2023-10-10 22:22:27'),
('38aaf05229b20d7a497c89eaa10efb30b1cc0e87', '54.36.149.4', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363937373333313b5f63695f70726576696f75735f75726c7c733a35363a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b2f637573746f6d65722d737570706f7274223b, '2023-10-10 22:35:31'),
('bae05792da401ab76a4806f143c083650c81f0d7', '54.36.148.191', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363937383132383b5f63695f70726576696f75735f75726c7c733a35323a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f636865636b696e672d6163636f756e7473223b, '2023-10-10 22:48:48'),
('29532440f41b3505e3ca0a37d79b0772d3e97363', '54.36.149.102', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363937383937383b5f63695f70726576696f75735f75726c7c733a34373a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f6372656469742d6361726473223b, '2023-10-10 23:02:58'),
('9334ae21fd86975d5f8ba8f1a5822f92fb90d925', '54.36.148.176', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363937393539373b5f63695f70726576696f75735f75726c7c733a33393a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b223b, '2023-10-10 23:13:17'),
('45d7977ec680b7c5b8811a85e4d549fb5ac32d57', '54.36.148.69', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363938313937343b5f63695f70726576696f75735f75726c7c733a35373a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b2f6372656469742d63617264732e68746d6c223b, '2023-10-10 23:52:54'),
('1c56949dd982f958e7b96f28c0dc7c58c911d383', '54.36.148.177', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363938343531383b5f63695f70726576696f75735f75726c7c733a34323a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f63617265657273223b, '2023-10-11 00:35:18'),
('7b69e7065dc0afb547a5b39f6efda52f3756e7cb', '54.36.149.1', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363938383437353b5f63695f70726576696f75735f75726c7c733a35323a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f636865636b696e672d6163636f756e7473223b, '2023-10-11 01:41:15'),
('4fc6bb5dd640eb08d0ae79d2da92bee83805a63f', '54.36.148.195', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363939313230303b5f63695f70726576696f75735f75726c7c733a34363a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f676976696e672d6261636b223b, '2023-10-11 02:26:40'),
('51f32747b4a988a48aaad67c3335d732c0b099bd', '54.36.148.105', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363939313830303b5f63695f70726576696f75735f75726c7c733a34313a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f696e76657374223b, '2023-10-11 02:36:40'),
('164fb509d07764f80fa77fdf00e72e6dffe43bd3', '54.36.148.126', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363939323434303b5f63695f70726576696f75735f75726c7c733a33393a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f6e657773223b, '2023-10-11 02:47:20'),
('49a01f177a23ad04fe407af21f2705946c89e275', '54.36.148.204', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363939333039373b5f63695f70726576696f75735f75726c7c733a34333a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f7061796d656e7473223b, '2023-10-11 02:58:17'),
('6618114cb16a2635e807b392b7e621e640f0ffcb', '54.36.148.19', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363939333639363b5f63695f70726576696f75735f75726c7c733a34393a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f707269766163792d706f6c696379223b, '2023-10-11 03:08:16'),
('0988978393dcf2059fa6098f6b45441feccc3534', '54.36.149.3', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363939343238313b5f63695f70726576696f75735f75726c7c733a33393a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f73617665223b, '2023-10-11 03:18:01'),
('c6404dd769f2ac40fef48bd8fbc040d1caf0f55f', '54.36.148.244', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363939343837363b5f63695f70726576696f75735f75726c7c733a37353a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f73696d706c652d776179732d746f2d6d616e6167652d612d636865636b696e672d6163636f756e74223b, '2023-10-11 03:27:56'),
('ae1ab6652f9eca312e37054830928ca2f51af461', '54.36.149.91', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363939353530373b5f63695f70726576696f75735f75726c7c733a36393a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f7461782d636865636b6c6973742d352d7468696e67732d746f2d72656d656d626572223b, '2023-10-11 03:38:27'),
('1b7764bbc584ff165d429d938cc0c43431581194', '54.36.148.189', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363939363137363b5f63695f70726576696f75735f75726c7c733a34313a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f626f72726f77223b, '2023-10-11 03:49:36'),
('fe2398a5a5c876dabf4a411dab517b5f86a98b5d', '54.36.148.233', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363939363837343b5f63695f70726576696f75735f75726c7c733a34383a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b2f61626f75742d7573223b, '2023-10-11 04:01:14'),
('b14d93bcc399c8d5f432e5e048c799ff8a0155b9', '54.36.149.10', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363939373537393b5f63695f70726576696f75735f75726c7c733a34363a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b2f626f72726f77223b, '2023-10-11 04:12:59'),
('6cbd802333ea83faaa10a5bcf152391d05bd2af2', '54.36.148.167', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363939383932383b5f63695f70726576696f75735f75726c7c733a34373a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f6372656469742d6361726473223b, '2023-10-11 04:35:28'),
('a57c59e896114f9ea62ac60a95a9efd0208e17a8', '54.36.149.99', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363939393435393b5f63695f70726576696f75735f75726c7c733a35313a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f637573746f6d65722d737570706f7274223b, '2023-10-11 04:44:19'),
('afa5e26550bd78776af5e7a0223124fa5b47a554', '54.36.148.248', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373030303035313b5f63695f70726576696f75735f75726c7c733a33393a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f66617173223b, '2023-10-11 04:54:11'),
('473f7450551d93951f8f9580c852f2dbbadc7b34', '54.36.149.104', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373030303636333b5f63695f70726576696f75735f75726c7c733a34373a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b2f63617265657273223b, '2023-10-11 05:04:23'),
('63fe83fdff238fb9309ba08859188fb859fb6297', '54.36.149.107', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373030313239333b5f63695f70726576696f75735f75726c7c733a35373a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b2f636865636b696e672d6163636f756e7473223b, '2023-10-11 05:14:53'),
('215efa52a1390b8e7d48d38945c3516ae2b02602', '54.36.149.39', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373030313937313b5f63695f70726576696f75735f75726c7c733a35323a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b2f6372656469742d6361726473223b, '2023-10-11 05:26:11'),
('04a44f29db2b43f95681390576092daafbb67472', '54.36.148.164', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373030323631333b5f63695f70726576696f75735f75726c7c733a35363a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b2f637573746f6d65722d737570706f7274223b, '2023-10-11 05:36:53'),
('851f52187624dc3002414c1c467e117e0abce66c', '54.36.148.189', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373030333231333b5f63695f70726576696f75735f75726c7c733a34343a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b2f66617173223b, '2023-10-11 05:46:53'),
('59a08c91629fadb1e905a2fb8f8a270ea7ec7bbf', '54.36.149.83', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373030333833313b5f63695f70726576696f75735f75726c7c733a35313a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b2f676976696e672d6261636b223b, '2023-10-11 05:57:11'),
('48ab47594288f40349ca2efc2ecd414345a57290', '54.36.149.39', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373030343439373b5f63695f70726576696f75735f75726c7c733a34363a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b2f696e76657374223b, '2023-10-11 06:08:17'),
('999bbfae3ca3e172175594faecb6dd88fd2e0199', '54.36.148.14', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373030353133323b5f63695f70726576696f75735f75726c7c733a34343a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b2f6e657773223b, '2023-10-11 06:18:52'),
('0876cf5314e7d6a752c98911fddc0678ad88850d', '54.36.149.80', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373030353638323b5f63695f70726576696f75735f75726c7c733a34383a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b2f7061796d656e7473223b, '2023-10-11 06:28:02'),
('4fd52b11c4101fb8af8256f8a31144af9b0d5407', '54.36.149.24', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373030363233353b5f63695f70726576696f75735f75726c7c733a35343a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b2f707269766163792d706f6c696379223b, '2023-10-11 06:37:15'),
('1333d3dadc4484626e8e155d76d4d562a23c9ce4', '102.90.43.49', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373031363334353b5f63695f70726576696f75735f75726c7c733a33353a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f61646d696e223b61646d696e7c733a353a2261646d696e223b757365725f69647c733a323a223130223b, '2023-10-11 09:27:22'),
('ea4d68e451fc3c7194afb7cbc840cd0a719d2707', '54.36.149.76', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373030363736303b5f63695f70726576696f75735f75726c7c733a34343a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b2f73617665223b, '2023-10-11 06:46:00'),
('15ef1ca181d95b813a1426b699025da8992eaa4e', '54.36.148.210', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373030373334393b5f63695f70726576696f75735f75726c7c733a38303a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b2f73696d706c652d776179732d746f2d6d616e6167652d612d636865636b696e672d6163636f756e74223b, '2023-10-11 06:55:49'),
('df14b965ddf253ce98e4843178ee7a4fa8725135', '54.36.148.60', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373031313730303b5f63695f70726576696f75735f75726c7c733a37343a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b2f7461782d636865636b6c6973742d352d7468696e67732d746f2d72656d656d626572223b, '2023-10-11 08:08:20'),
('eadd2b99961be31b1be0b73421a5961ec280ad2f', '102.90.44.18', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373031363632383b5f63695f70726576696f75735f75726c7c733a34383a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f61646d696e2f6d616e6167653f69643d3131223b61646d696e7c733a353a2261646d696e223b, '2023-10-11 09:31:27'),
('0f15895aa4c75de942f223ab2dd7eed7dcbef69c', '102.90.44.18', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373031363733383b5f63695f70726576696f75735f75726c7c733a33303a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f223b, '2023-10-11 09:34:20'),
('cb65b455cb195418fb4df0a5a4d1684bbdabb186', '102.90.44.172', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373031363837383b757365725f69647c733a323a223131223b5f63695f70726576696f75735f75726c7c733a33303a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f223b, '2023-10-11 09:34:50'),
('24221fc13c36d09796ca52e6612945b15846172e', '102.90.44.172', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373031363933353b757365725f69647c733a323a223131223b5f63695f70726576696f75735f75726c7c733a33303a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f223b, '2023-10-11 09:35:47'),
('198d3624426c3f8ff440095588b7ab724afd9e81', '197.210.78.148', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373032353733303b, '2023-10-11 12:02:10'),
('7a7092fc16959c61c05d78d47b234d1a1034c97f', '197.210.85.51', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373032373034303b5f63695f70726576696f75735f75726c7c733a33353a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f61646d696e223b61646d696e7c733a353a2261646d696e223b, '2023-10-11 12:24:08'),
('8694225a3d9b634a15797c9160aadad8a97fa032', '197.210.85.131', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373032373231333b6d73677c733a34333a224163636f756e74204944206f72204163636f756e74204e756d62657220646f6573206e6f74206578697374223b5f5f63695f766172737c613a313a7b733a333a226d7367223b733a333a226f6c64223b7d, '2023-10-11 12:26:55'),
('dfdc69f7ee81e42f27101d4b4b2aafbb18ba5f08', '197.210.78.235', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373032373238373b757365725f69647c733a323a223131223b, '2023-10-11 12:28:17'),
('e942028cc7de3799332fa0a1323fcaffd654dbe8', '197.210.226.244', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373035323631313b6d73677c733a34333a224163636f756e74204944206f72204163636f756e74204e756d62657220646f6573206e6f74206578697374223b5f5f63695f766172737c613a313a7b733a333a226d7367223b733a333a226e6577223b7d, '2023-10-11 19:33:09'),
('93b85bbe6256dca296a769df82db41daa1c66fab', '197.210.227.32', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373035353935343b5f63695f70726576696f75735f75726c7c733a35383a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f6f70656e5f6163636f756e743f73746172745f6163636f756e743d31223b, '2023-10-11 20:26:54'),
('91c65652d02d57e7248e23296f213fef6f0cda95', '197.210.227.132', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373035353639373b6d73677c733a34333a224163636f756e74204944206f72204163636f756e74204e756d62657220646f6573206e6f74206578697374223b5f5f63695f766172737c613a313a7b733a333a226d7367223b733a333a226e6577223b7d, '2023-10-11 20:22:12'),
('f1b4c1ca2688c6de7695724c0e2120e5e60451ad', '197.210.79.5', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373733323330383b5f63695f70726576696f75735f75726c7c733a33303a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f223b, '2023-10-19 16:18:33'),
('9f134fd8d2d4f2ccce44fe4296c462f730d360c5', '102.90.48.212', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373733323334313b5f63695f70726576696f75735f75726c7c733a33303a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f223b, '2023-10-19 16:19:30'),
('d2c872ebdf40ff7b20a145d8b34bd0221f25d5f6', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373735323934353b5f63695f70726576696f75735f75726c7c733a33303a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f223b, '2023-10-19 22:02:25'),
('2962a6eba2b81f6942c1c335a7604e05efc59c64', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373735353132343b5f63695f70726576696f75735f75726c7c733a33383a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f61626f75742d7573223b, '2023-10-19 22:38:44'),
('d673dfff9a31fdc13018c2ca77ae82dcbf036b54', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373735353135343b5f63695f70726576696f75735f75726c7c733a33343a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b223b, '2023-10-19 22:39:14'),
('3bd1aceecf379448bf8485052faf0fb39799d576', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373735353138353b5f63695f70726576696f75735f75726c7c733a33363a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f626f72726f77223b, '2023-10-19 22:39:45'),
('bb2e02e74ff7545d1cd04175adaf69687d677aa5', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373735353231353b5f63695f70726576696f75735f75726c7c733a34363a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f627573696e6573732d62616e6b696e67223b, '2023-10-19 22:40:15'),
('3536a9af8ba303f37bde4a993d6f29ef8ea55c27', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373735353234363b5f63695f70726576696f75735f75726c7c733a33373a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f63617265657273223b, '2023-10-19 22:40:47'),
('78010525d63fc31a1e08e503d228d6cf25f73658', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373735353237373b, '2023-10-19 22:41:17'),
('da61af7cde70b6f0152ba41016a326f6b34ed7d6', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373735353330373b5f63695f70726576696f75735f75726c7c733a34323a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f6372656469742d6361726473223b, '2023-10-19 22:41:47'),
('7fa2cff821970f04d51c5c5ba173ff9dd381572c', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373735353333383b5f63695f70726576696f75735f75726c7c733a34363a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f637573746f6d65722d737570706f7274223b, '2023-10-19 22:42:18'),
('de686c8a2404d1441090b505ea5b4f8e0313e1eb', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373735353336393b5f63695f70726576696f75735f75726c7c733a33343a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f66617173223b, '2023-10-19 22:42:49'),
('ad89159d723a39d5b905f4195119a6db7b03d57f', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373735353339393b5f63695f70726576696f75735f75726c7c733a34313a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f676976696e672d6261636b223b, '2023-10-19 22:43:19'),
('14fcd671de30defdee8256dce91f52cee386a815', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373735353432373b5f63695f70726576696f75735f75726c7c733a36313a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f686f772d746f2d736176652d666f722d73756d6d65722d7661636174696f6e223b, '2023-10-19 22:43:47'),
('d5701d158c01be78fe2f2649d48c73829a72f927', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373735353435383b5f63695f70726576696f75735f75726c7c733a33363a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f696e76657374223b, '2023-10-19 22:44:18'),
('46e121b13dbc804d4a56d92e422624cdadff1e69', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373735353531393b, '2023-10-19 22:45:19'),
('e86a9719eb02ddcd5c6ed28f19e57b4e90f2d7db', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373735353534393b5f63695f70726576696f75735f75726c7c733a33343a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f6e657773223b, '2023-10-19 22:45:49'),
('bdb59be85b4766834d6c9e9e30424c4abb7c0a98', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373735353537393b5f63695f70726576696f75735f75726c7c733a33383a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f7061796d656e7473223b, '2023-10-19 22:46:19'),
('bb0b23a2d4b000bc944683a1fdfcef3b37558e07', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373735353630393b5f63695f70726576696f75735f75726c7c733a34343a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f707269766163792d706f6c696379223b, '2023-10-19 22:46:49'),
('4233dd6fb5bb2a1c97af6079b210694882db5258', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373735353633383b5f63695f70726576696f75735f75726c7c733a33343a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f73617665223b, '2023-10-19 22:47:18'),
('00055c2fa23474c82ad662659e4539bb91fe74ce', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373735353636373b5f63695f70726576696f75735f75726c7c733a37303a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f73696d706c652d776179732d746f2d6d616e6167652d612d636865636b696e672d6163636f756e74223b, '2023-10-19 22:47:47'),
('5f9628907521c018d5b538f442e10ee8cd74934d', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373735353639363b5f63695f70726576696f75735f75726c7c733a36343a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f7461782d636865636b6c6973742d352d7468696e67732d746f2d72656d656d626572223b, '2023-10-19 22:48:16'),
('956504f67902f4896fbff1eaacddb904a805a903', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373735353732363b5f63695f70726576696f75735f75726c7c733a38373a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f7468652d696d706163742d6f662d726973696e672d72617465732d616e642d696e666c6174696f6e2d6f6e2d796f75722d627573696e657373223b, '2023-10-19 22:48:46'),
('01ad817e97005794913f55e9736163799c9f027f', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373735363931373b, '2023-10-19 23:08:37'),
('734ae8679935963db6996fac8d489265085fa79c', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373735363935323b5f63695f70726576696f75735f75726c7c733a35323a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f6372656469742d63617264732e68746d6c223b, '2023-10-19 23:09:12'),
('6b4adee48a7c5bf2a1e56b39736dd36df0d34495', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373735363938343b, '2023-10-19 23:09:44'),
('52b8d0d11ed48cc65b015bf18dc9aa4b53eaba4c', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373735383937373b, '2023-10-19 23:42:57'),
('cdf30ff9b4e4d392f8a6375078707db2d47e7ba3', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373735393135313b, '2023-10-19 23:45:51'),
('2d5ed4bd0a0b266ce1ece12d05190037a95891c4', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373735393230393b, '2023-10-19 23:46:49'),
('9e790bdccfad5a70dcafc53706d9497f3cc87a08', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373735393239363b5f63695f70726576696f75735f75726c7c733a34363a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f676976696e672d6261636b223b, '2023-10-19 23:48:16'),
('a96888080a71181a9023c14b79e325b94ee8d745', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373735393332353b5f63695f70726576696f75735f75726c7c733a34313a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f696e76657374223b, '2023-10-19 23:48:45'),
('50807ed2822f654c4c08789534576dd67b91c6a0', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373735393338343b5f63695f70726576696f75735f75726c7c733a33393a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f6e657773223b, '2023-10-19 23:49:44'),
('ed1e72a8783a6977b49753275812d30853a3b032', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373735393431343b5f63695f70726576696f75735f75726c7c733a34333a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f7061796d656e7473223b, '2023-10-19 23:50:14'),
('4214e178f6ad8a07d08cfb5d0bf1a8942a96e271', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373735393434333b5f63695f70726576696f75735f75726c7c733a34393a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f707269766163792d706f6c696379223b, '2023-10-19 23:50:43'),
('e72410ca9a3ce18d92d18e75a0e7421d9046c751', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373735393437333b5f63695f70726576696f75735f75726c7c733a33393a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f73617665223b, '2023-10-19 23:51:13'),
('f85cfbdd508300eb875ee0d8c3404e310672e6f5', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373735393530313b5f63695f70726576696f75735f75726c7c733a37353a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f73696d706c652d776179732d746f2d6d616e6167652d612d636865636b696e672d6163636f756e74223b, '2023-10-19 23:51:41'),
('51d01e0d4c25c0f3b7930557430babd1bb5ec501', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373735393532393b5f63695f70726576696f75735f75726c7c733a36393a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f7461782d636865636b6c6973742d352d7468696e67732d746f2d72656d656d626572223b, '2023-10-19 23:52:09'),
('2331b743cdeedd0c9192cb256d53358f20312f6d', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373735393535363b5f63695f70726576696f75735f75726c7c733a33393a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f66617173223b, '2023-10-19 23:52:36'),
('a8661ae2460a9cd1aba852d4eb53eb462228deeb', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373735393538333b5f63695f70726576696f75735f75726c7c733a35313a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f637573746f6d65722d737570706f7274223b, '2023-10-19 23:53:03'),
('79159245fe2e7895e45e6f240c03bd5e8a174f7c', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373735393631313b5f63695f70726576696f75735f75726c7c733a35323a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f636865636b696e672d6163636f756e7473223b, '2023-10-19 23:53:31'),
('fe76f4ffc722dab48078fb472adb429ef2589ab8', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373735393633373b5f63695f70726576696f75735f75726c7c733a34323a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f63617265657273223b, '2023-10-19 23:53:57'),
('a5f12907e98c1204b2627b78e22b850085404a92', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373735393636343b5f63695f70726576696f75735f75726c7c733a34313a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f626f72726f77223b, '2023-10-19 23:54:24'),
('bd2746ba8b30ad6f52c7775365c0be231b30822f', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373735393639323b5f63695f70726576696f75735f75726c7c733a35373a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b2f6372656469742d63617264732e68746d6c223b, '2023-10-19 23:54:52'),
('7d43f25c16f125bed2ee55507d7860813e61facc', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373735393732303b5f63695f70726576696f75735f75726c7c733a33393a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b223b, '2023-10-19 23:55:20'),
('ef4d21a6f0016fab18adc28c713abbe25218c990', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373735393734383b5f63695f70726576696f75735f75726c7c733a34333a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f61626f75742d7573223b, '2023-10-19 23:55:48'),
('ca6d975fac0a27bfde5e75e7a99f32f571ec2853', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373735393737363b5f63695f70726576696f75735f75726c7c733a34373a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f6372656469742d6361726473223b, '2023-10-19 23:56:16'),
('546a53c27ea83a58fcfccf1057e504122dddcd92', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373736303736303b, '2023-10-20 00:12:40'),
('985217555cd57d2feff68dacc8941ec7ba803aae', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373736303836303b5f63695f70726576696f75735f75726c7c733a35323a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b2f6372656469742d6361726473223b, '2023-10-20 00:14:20'),
('4f9dd6e3793ecddff3690195322733497d9144d3', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373736303839333b5f63695f70726576696f75735f75726c7c733a37343a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b2f7461782d636865636b6c6973742d352d7468696e67732d746f2d72656d656d626572223b, '2023-10-20 00:14:53'),
('546fb37ce0a18ce4b10d002f89876b1d5598ad35', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373736303932383b5f63695f70726576696f75735f75726c7c733a34373a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b2f63617265657273223b, '2023-10-20 00:15:28'),
('ffc92483f4b54a335620d5d60050ec19374d92e8', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373736303936313b5f63695f70726576696f75735f75726c7c733a35373a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b2f636865636b696e672d6163636f756e7473223b, '2023-10-20 00:16:01'),
('e0d194562baba1ea1d75bbd116d89101958f40f6', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373736303939323b5f63695f70726576696f75735f75726c7c733a34383a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b2f61626f75742d7573223b, '2023-10-20 00:16:32'),
('65ed36adf2b008f6d61dd94dbc272e48c92459b6', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373736313032343b5f63695f70726576696f75735f75726c7c733a35363a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b2f637573746f6d65722d737570706f7274223b, '2023-10-20 00:17:04'),
('4c248df379d14de36e964ee91275ba752a15ed43', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373736313035353b5f63695f70726576696f75735f75726c7c733a34343a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b2f66617173223b, '2023-10-20 00:17:35'),
('33547d5ba0432a8fe635fb8220eeecf2d2d9c86a', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373736313038363b5f63695f70726576696f75735f75726c7c733a35313a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b2f676976696e672d6261636b223b, '2023-10-20 00:18:06');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `data`, `timestamp`) VALUES
('c0c94251daa3e1d7ba850beb36046f0d6315fb72', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373736313131363b5f63695f70726576696f75735f75726c7c733a34363a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b2f696e76657374223b, '2023-10-20 00:18:36'),
('18bc21e890d1fb81fc46141602bfe17212876bb8', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373736313137363b5f63695f70726576696f75735f75726c7c733a34343a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b2f6e657773223b, '2023-10-20 00:19:36'),
('811122e7e7e897c0fcc0cbc1513712be144bc7df', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373736313230363b5f63695f70726576696f75735f75726c7c733a34383a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b2f7061796d656e7473223b, '2023-10-20 00:20:06'),
('9e77ac62556ef26055abd5ef6bcc32f5a5fbbc1c', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373736313233343b5f63695f70726576696f75735f75726c7c733a35343a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b2f707269766163792d706f6c696379223b, '2023-10-20 00:20:34'),
('da42843e75dc8a55bd0392b166acffda776a6166', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373736313236343b5f63695f70726576696f75735f75726c7c733a34343a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b2f73617665223b, '2023-10-20 00:21:04'),
('8660245e62fc594acf04bdcfdaaef0781e33c458', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373736313239333b5f63695f70726576696f75735f75726c7c733a38303a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b2f73696d706c652d776179732d746f2d6d616e6167652d612d636865636b696e672d6163636f756e74223b, '2023-10-20 00:21:33'),
('b09f3e264f3b23f5e705807a9f1c50e5c29784ed', '195.201.194.151', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373736313332323b5f63695f70726576696f75735f75726c7c733a34363a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b2f626f72726f77223b, '2023-10-20 00:22:02'),
('0218dd4a67d187bc00fc60c93dab6cf379e26f87', '196.247.168.142', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373739313336353b5f63695f70726576696f75735f75726c7c733a34363a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f637573746f6d65722d737570706f7274223b, '2023-10-20 08:42:55'),
('dd7efdcd80699c73e7aeb0891e31162156bfa597', '212.227.216.250', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373937303135333b5f63695f70726576696f75735f75726c7c733a33303a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f223b, '2023-10-22 10:22:33'),
('1ad2eab8f59531dbc469f1948e960ca0c700d1f5', '212.227.216.138', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373937303136383b5f63695f70726576696f75735f75726c7c733a33383a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f61626f75742d7573223b, '2023-10-22 10:22:48'),
('cc59a321007437eb80672607b2aa97004de17415', '212.227.216.186', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373937303138303b5f63695f70726576696f75735f75726c7c733a34343a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f707269766163792d706f6c696379223b, '2023-10-22 10:23:00'),
('e0931241c270d365a9079a7facdd8298c5513dc3', '212.227.216.170', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373937313435363b5f63695f70726576696f75735f75726c7c733a33343a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b223b, '2023-10-22 10:44:16'),
('ed1a0f59268edae4e62b4c7c869dc7b166e192f0', '212.227.216.210', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373937313435363b5f63695f70726576696f75735f75726c7c733a36313a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f686f772d746f2d736176652d666f722d73756d6d65722d7661636174696f6e223b, '2023-10-22 10:44:16'),
('453a68ed626e37c051996a985507e6aa65987429', '212.227.216.202', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373937313435383b5f63695f70726576696f75735f75726c7c733a34363a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f637573746f6d65722d737570706f7274223b, '2023-10-22 10:44:18'),
('f249118ac39ece42b0500c04bbc4d3dfdd72c97d', '212.227.216.242', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373937313436343b5f63695f70726576696f75735f75726c7c733a33363a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f626f72726f77223b, '2023-10-22 10:44:24'),
('846dffd253d4ac1ce3d3a3386cdafe3db7cdfd58', '212.227.216.218', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373937313438313b5f63695f70726576696f75735f75726c7c733a33363a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f696e76657374223b, '2023-10-22 10:44:41'),
('37ae7917d5060dcfa7b237c76cdb065827d027cf', '212.227.216.242', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373937313438363b5f63695f70726576696f75735f75726c7c733a33373a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f63617265657273223b, '2023-10-22 10:44:46'),
('71935e533be07b1141ab6d9c05beaf5eebe9f908', '212.227.216.250', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373937313438383b5f63695f70726576696f75735f75726c7c733a34363a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f627573696e6573732d62616e6b696e67223b, '2023-10-22 10:44:48'),
('7a098dd06a7fa424e4b7a12070d6363f1e12faae', '212.227.216.170', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373937313439303b, '2023-10-22 10:44:50'),
('3949bdc2dab4dd338bce668e67275ee6aecfe61f', '212.227.216.186', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373937313439373b5f63695f70726576696f75735f75726c7c733a33343a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f6e657773223b, '2023-10-22 10:44:57'),
('1b527ad2e476202fa840cacef0d64178e524c826', '212.227.216.130', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373937313530353b, '2023-10-22 10:45:05'),
('0eaa44c31d63eac90c676f60441165bf12e4e679', '212.227.216.202', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373937313531313b5f63695f70726576696f75735f75726c7c733a34323a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f6372656469742d6361726473223b, '2023-10-22 10:45:11'),
('b3776d44e1ec9518007dbc2af141facd842f6ed5', '212.227.216.234', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373937313531343b5f63695f70726576696f75735f75726c7c733a33343a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f66617173223b, '2023-10-22 10:45:14'),
('c1e9c65fd4bccb7b8f4381641e0b09e29b9d0cc0', '212.227.216.202', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373937313531373b5f63695f70726576696f75735f75726c7c733a34313a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f676976696e672d6261636b223b, '2023-10-22 10:45:17'),
('88da5373fbc9a2df01e4d47c315f59b24253e176', '51.15.225.190', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373938313538373b5f63695f70726576696f75735f75726c7c733a33303a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f223b, '2023-10-22 13:33:07'),
('900acc825964921dcdb870eda24f1921b66e4d0f', '51.15.220.157', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373939343339323b5f63695f70726576696f75735f75726c7c733a33303a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f223b, '2023-10-22 17:06:32'),
('335a00f3232d81f0e62dacf07f324c49f690ae11', '51.15.220.157', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373939343339333b5f63695f70726576696f75735f75726c7c733a33383a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f61626f75742d7573223b, '2023-10-22 17:06:33'),
('6bf15a47f969e5ce1042ba48f5316e64d27ab107', '51.15.220.157', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373939343339333b5f63695f70726576696f75735f75726c7c733a34363a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f637573746f6d65722d737570706f7274223b, '2023-10-22 17:06:33'),
('d71fef4dfa73248bfa31138e452b4179d0c5d74a', '51.15.220.157', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373939343339333b5f63695f70726576696f75735f75726c7c733a34343a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f707269766163792d706f6c696379223b, '2023-10-22 17:06:33'),
('0dca64d3835db0d2fc34585aecf3a3b63e4affc7', '149.154.161.249', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373939383334313b5f63695f70726576696f75735f75726c7c733a33303a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f223b, '2023-10-22 18:12:21'),
('c9182c6bd2b0eb404b66ebc9aa1afe67eb79b480', '197.210.84.183', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373939383334333b5f63695f70726576696f75735f75726c7c733a33303a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f223b, '2023-10-22 18:12:27'),
('2435480357c89a9711c09bd79e4661d8b70aaea6', '102.89.46.161', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363131393031393b5f63695f70726576696f75735f75726c7c733a33343a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f75736572223b757365725f69647c733a323a223130223b, '2023-10-01 00:10:24'),
('9d0304dd48cea4207a730e2fec70e25cfbd698b1', '103.225.200.184', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363131353531373b5f63695f70726576696f75735f75726c7c733a34363a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f637573746f6d65722d737570706f7274223b, '2023-09-30 23:12:02');

-- --------------------------------------------------------

--
-- Table structure for table `ci_settings`
--

CREATE TABLE `ci_settings` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `company_description` longtext DEFAULT NULL,
  `company_keyword` text DEFAULT NULL,
  `company_email` varchar(255) DEFAULT NULL,
  `noreply` varchar(100) DEFAULT NULL,
  `company_address` varchar(255) DEFAULT NULL,
  `company_phone` varchar(255) DEFAULT NULL,
  `abrv` varchar(100) DEFAULT NULL,
  `chat_code` text DEFAULT NULL,
  `theme_color` varchar(255) DEFAULT NULL,
  `secondary_color` varchar(255) NOT NULL DEFAULT '#000',
  `theme` varchar(100) NOT NULL DEFAULT 'finapp-light',
  `template` varchar(100) NOT NULL DEFAULT 'kinsmen-sky',
  `max_upload` varchar(100) NOT NULL DEFAULT '5',
  `company_logo` varchar(100) DEFAULT NULL,
  `company_favicon` varchar(100) DEFAULT NULL,
  `min_deposit` int(11) NOT NULL DEFAULT 500,
  `recaptcha` int(11) NOT NULL DEFAULT 1,
  `captchaPublicKey` varchar(255) DEFAULT NULL,
  `captchaPrivateKey` varchar(255) DEFAULT NULL,
  `live_chat` int(11) NOT NULL DEFAULT 1,
  `im_chat` int(11) NOT NULL DEFAULT 1,
  `im_position` varchar(100) DEFAULT 'left',
  `whatsapp` varchar(255) DEFAULT NULL,
  `telegram` varchar(255) DEFAULT NULL,
  `email_header` longtext DEFAULT NULL,
  `email_footer` longtext DEFAULT NULL,
  `otp` int(11) NOT NULL DEFAULT 1,
  `wire_fee` int(11) NOT NULL DEFAULT 1,
  `loan` int(11) NOT NULL DEFAULT 1,
  `login_notify` int(11) NOT NULL DEFAULT 1,
  `bank_routing` int(11) NOT NULL DEFAULT 655205039,
  `allow_register` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ci_settings`
--

INSERT INTO `ci_settings` (`id`, `company_name`, `company_description`, `company_keyword`, `company_email`, `noreply`, `company_address`, `company_phone`, `abrv`, `chat_code`, `theme_color`, `secondary_color`, `theme`, `template`, `max_upload`, `company_logo`, `company_favicon`, `min_deposit`, `recaptcha`, `captchaPublicKey`, `captchaPrivateKey`, `live_chat`, `im_chat`, `im_position`, `whatsapp`, `telegram`, `email_header`, `email_footer`, `otp`, `wire_fee`, `loan`, `login_notify`, `bank_routing`, `allow_register`, `created_at`, `updated_at`) VALUES
(1, 'Givens Hall Bank', 'Mobile Banking, Credit Cards, Mortgages, Auto Loan', 'Given Halls Bank', 'info@givenshallbank.com', 'info@givenshallbank.com', 'The Harbour Center, 42 North\r\nChurch Street, George Town, Cayman Island.', '+111111111111', 'Ghb', '', '#007098', '#c92041', 'finapp-light', 'bank-pro', '5', '1697015550_8f5f23d1b1a5c59155aa.png', '1697015495_a78b0815e536cde60b80.png', 0, 0, '11111111111111111111', '1111111111111111111111111', 0, 0, 'left', '+234', ' ', '<!doctype html>\r\n<html>\r\n<head>\r\n	<meta charset=\"utf-8\">\r\n	<title>Mail</title>\r\n	<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n</head>\r\n<body>\r\n	<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n		<tbody>\r\n			<tr>\r\n				<td width=\"100%\" align=\"center\" valign=\"top\" bgcolor=\"#eeeeee\" height=\"20\"></td>\r\n			</tr>\r\n			<tr>\r\n				<td bgcolor=\"#eeeeee\" align=\"center\" style=\"padding:0px 15px 0px 15px\" class=\"m_2902568367268423488section-padding\">\r\n					<table bgcolor=\"#ffffff\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width:600px\" class=\"m_2902568367268423488responsive-table\">\r\n						<tbody>\r\n							<tr>\r\n								<td>\r\n									<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n										<tbody>\r\n											<tr>\r\n												<td align=\"center\" style=\"padding:30px; background-color: site_theme_color\">\r\n													<a href=\"site_url\"> \r\n																							<img src=\"site_upload_folder/site_logo\" alt=\"site_name\" width=\"150\" border=\"0\" style=\"vertical-align:middle\" class=\"CToWUd\"> </a>\r\n												\r\n												</td>\r\n											</tr>\r\n											\r\n												<tr>\r\n													<td class=\"m_2902568367268423488content\" style=\"font:15px/21px \\\'Helvetica Neue\\\',Arial,\\\'sans-serif\\\';text-align:left;color:#555555;\">\r\n														<div style=\"padding: 35px 20px\">', '</div>\r\n													</td>\r\n												</tr>\r\n																						<tr>\r\n													<td class=\"m_2902568367268423488content\" style=\"font:15px/21px \\\'Helvetica Neue\\\',Arial,\\\'sans-serif\\\';text-align:left;color:site_theme_color;\">\r\n														<div style=\"padding-left: 20px\">\r\n														<p> <span style=\"color:#000\">Best Regards, </span><br> site_name. </p>\r\n														</div>\r\n													</td>\r\n												</tr>\r\n											\r\n										</tbody>\r\n									</table>\r\n								</td>\r\n							</tr>\r\n							<tr>\r\n								<td width=\"100%\" align=\"center\" valign=\"top\" bgcolor=\"#ffffff\" height=\"20\"></td>\r\n							</tr>\r\n						</tbody>\r\n					</table>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td bgcolor=\"#eeeeee\" align=\"center\" style=\"padding:20px 0px\">\r\n					<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" style=\"max-width:600px\" class=\"m_2902568367268423488responsive-table\">\r\n						<tbody>\r\n							<tr> </tr>\r\n							<tr>\r\n								<td bgcolor=\"#eeeeee\" align=\"center\">\r\n									<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" style=\"max-width:600px\" class=\"m_2902568367268423488responsive-table\">\r\n										<tbody>\r\n											<tr>\r\n												<td style=\"color:#999999;font-size:12px;line-height:16px;text-align:center;font-family:arial,helvetica neue,helvetica,sans-serif\">Copyright current_year | site_name</td>\r\n											</tr>\r\n										</tbody>\r\n									</table>\r\n								</td>\r\n							</tr>\r\n						</tbody>\r\n					</table>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</body>\r\n</html>', 0, 1, 0, 1, 251480576, 1, '2022-10-11 17:10:09', '2023-10-11 10:18:59');

-- --------------------------------------------------------

--
-- Table structure for table `ci_support_tickets`
--

CREATE TABLE `ci_support_tickets` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference` varchar(10) DEFAULT NULL,
  `dept` varchar(100) DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `loan` int(11) NOT NULL DEFAULT 0,
  `status` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ci_support_tickets`
--

INSERT INTO `ci_support_tickets` (`id`, `reference`, `dept`, `user_id`, `email`, `name`, `description`, `subject`, `loan`, `status`, `created_at`, `updated_at`) VALUES
(1, '631234', 'Crypto Purchase Request', 10, 'cschgga@gmail.com', 'Mike coop', NULL, 'Request to Buy Crypto', 0, 1, '2023-09-30 21:06:17', '2023-09-30 22:15:23'),
(2, '341082', 'Crypto Purchase Request', 10, 'cschgga@gmail.com', 'Mike coop', NULL, 'Request to Buy Crypto', 0, 1, '2023-09-30 21:06:25', '2023-09-30 22:11:22'),
(3, '882122', 'Crypto Purchase Request', 10, 'cschgga@gmail.com', 'Mike coop', NULL, 'Request to Buy Crypto', 0, 1, '2023-09-30 21:06:26', '2023-09-30 22:16:01'),
(4, '655347', 'Crypto Purchase Request', 10, 'cschgga@gmail.com', 'Mike coop', NULL, 'Request to Buy Crypto', 0, 1, '2023-09-30 21:07:06', '2023-09-30 22:08:35'),
(5, '732643', 'Loan', 10, 'cschgga@gmail.com', 'Mike coop', '\r\n		          <p><strong>Name of Applicant </strong> Mike coop</p>\r\n		          <p><strong>Email of Applicant </strong> cschgga@gmail.com</p>\r\n		          <p><strong>Amount Requested </strong> €6,000.00</p>\r\n		          <p><strong>Ocupation </strong> Eng</p>\r\n		          <p><strong>Additional Remarks </strong> Purpose for my loan</p>\r\n		          ', '€6,000.00 Loan Application', 1, 1, '2023-09-30 23:56:26', '2023-10-01 00:58:54');

-- --------------------------------------------------------

--
-- Table structure for table `ci_temp_transfer`
--

CREATE TABLE `ci_temp_transfer` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `bank_name` varchar(40) DEFAULT NULL,
  `bank_address` varchar(500) DEFAULT NULL,
  `sender_id` varchar(100) DEFAULT NULL,
  `sender_acc` varchar(255) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `receiver_name` varchar(255) DEFAULT NULL,
  `receiver_acc` varchar(30) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `swift` varchar(100) DEFAULT NULL,
  `routing` varchar(100) DEFAULT NULL,
  `remarks` varchar(500) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Pending',
  `balance` varchar(255) DEFAULT NULL,
  `month` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ci_temp_transfer`
--

INSERT INTO `ci_temp_transfer` (`id`, `user_id`, `amount`, `bank_name`, `bank_address`, `sender_id`, `sender_acc`, `reference`, `receiver_name`, `receiver_acc`, `type`, `swift`, `routing`, `remarks`, `status`, `balance`, `month`, `created_at`, `updated_at`) VALUES
(17, 6, 1000, 'Jazz Bank', '', '6929707', '003323524228', '212719266', 'solo', '11299288783', 'Debit', '14rrsffs', '112www', '', 'Pending', '37100', 'July 2023', '2023-07-31 15:10:29', '2023-07-31 16:10:29'),
(18, 6, 1000, 'Jazz Bank', '', '6929707', '003323524228', '350727178', 'Solo', '1100001111', 'Debit', 'Wqqcv11', '11667z#3', '', 'Pending', '37100', 'July 2023', '2023-07-31 15:17:57', '2023-07-31 16:17:57'),
(19, 6, 1000, 'Jazz Bank', '', '6929707', '003323524228', '846264356', 'solo', '1109988882', 'Debit', '1100001', 'gdffsw', '', 'Pending', '37100', 'July 2023', '2023-07-31 15:35:41', '2023-07-31 16:35:41'),
(20, 6, 1000, 'Jazz Bank', '', '6929707', '003323524228', '270115111', 'John Doe', '112239474774', 'Debit', 'SWLC15672', '1256788', '', 'Pending', '37100', 'August 2023', '2023-08-04 04:45:15', '2023-08-04 05:45:15'),
(21, 6, 1000, 'Jazz Bank', '', '6929707', '003323524228', '392672257', 'John Doe', '11263737883', 'Debit', 'N/A-Local Transer', '256788', 'test', 'Pending', '34100', 'August 2023', '2023-08-04 04:57:54', '2023-08-04 05:57:54'),
(24, 10, 3150, 'Demobank', '333 freemont street', '5117593', '005584875810', '891105516', '', '182737373', 'Debit', 'N/A-Internal Transer', '12345678', 'For items', 'Pending', '6848', 'October 2023', '2023-09-30 23:30:57', '2023-10-01 00:30:57');

-- --------------------------------------------------------

--
-- Table structure for table `ci_testimonials`
--

CREATE TABLE `ci_testimonials` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `content` mediumtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ci_testimonials`
--

INSERT INTO `ci_testimonials` (`id`, `name`, `image`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Ralph Morris', '1675890649_8aba863002df690c2952.png', '<p>I am impressed with the customer service and speed of payout<br></p>', '2023-02-08 21:10:49', '2023-05-16 05:18:38'),
(3, 'Ted Moralee', NULL, '<p>All one has to do is to look at your investment to see how well it is being looked after.</p>', '2023-02-08 21:30:52', '2023-05-16 05:18:38');

-- --------------------------------------------------------

--
-- Table structure for table `ci_transactions`
--

CREATE TABLE `ci_transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `coin_type` varchar(255) DEFAULT NULL,
  `coin_id` int(11) DEFAULT NULL,
  `transaction_type` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ci_transactions`
--

INSERT INTO `ci_transactions` (`id`, `user_id`, `name`, `email`, `status`, `coin_type`, `coin_id`, `transaction_type`, `amount`, `reference`, `token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Amy Smith', 'amysmith26uk@gmail.com', 0, 'BTC', 36, 'Deposit', '500', '172089', '93a234095f1acb5eec8e66aa675da7ad', '2023-04-09 10:15:00', '2023-05-16 05:18:38'),
(2, 6, 'Demo User', 'info@cycloneverse.org', 0, 'BTC', 36, 'Deposit', '3000', '552667', '3aa8679f45b2c9c05314e337622d43e3', '2023-09-30 20:53:46', '2023-09-30 21:53:46'),
(3, 6, 'Demo User', 'info@cycloneverse.org', 0, 'BTC', 36, 'Deposit', '3000', '352411', '71f2b7c778e794e209b0765ec9aee694', '2023-09-30 20:54:26', '2023-09-30 21:54:26'),
(4, 6, 'Demo User', 'info@cycloneverse.org', 0, 'BTC', 36, 'Deposit', '100', '999148', 'ff3203570832a445f56dc5a055adbd07', '2023-10-06 18:43:54', '2023-10-06 19:43:54');

-- --------------------------------------------------------

--
-- Table structure for table `ci_transfer`
--

CREATE TABLE `ci_transfer` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `bank_name` varchar(40) DEFAULT NULL,
  `bank_address` varchar(500) DEFAULT NULL,
  `sender_id` varchar(500) DEFAULT NULL,
  `sender_acc` varchar(255) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `receiver_name` varchar(255) DEFAULT NULL,
  `receiver_acc` varchar(30) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `swift` varchar(100) DEFAULT NULL,
  `routing` varchar(100) DEFAULT NULL,
  `remarks` varchar(500) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Successful',
  `balance` varchar(255) DEFAULT NULL,
  `month` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ci_transfer`
--

INSERT INTO `ci_transfer` (`id`, `user_id`, `amount`, `bank_name`, `bank_address`, `sender_id`, `sender_acc`, `reference`, `receiver_name`, `receiver_acc`, `type`, `swift`, `routing`, `remarks`, `status`, `balance`, `month`, `created_at`, `updated_at`) VALUES
(5, 6, 50000, 'Demo Bank', '333 freemont street', 'John Doe', 'Checking', '343257', 'Demo User', '003323524228', 'Credit', 'BBXXX', '12345678', '', 'Successful', '50000', 'July 2023', '2023-07-29 08:37:16', '2023-07-29 09:37:16'),
(11, 9, 9000, 'Demobank', '333 freemont street', 'Sender ', 'Checking', '959063', 'Franklin okoro', '005542448663', 'Credit', 'BBXXX', '12345678', 'Paid', 'Successful', '18000', 'August 2022', '2023-08-09 08:41:17', '2023-08-09 09:41:17'),
(12, 9, 3000, 'Citi bank', 'Frank', '5772414', '005542448663', '789563354', 'Franklin okoro', '5980928282', 'Debit', 'Dksisjsia', '82827282', 'Paod', 'Successful', '15000', 'August 2023', '2023-08-09 09:20:32', '2023-08-09 10:20:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_accounts`
--
ALTER TABLE `ci_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_id` (`account_id`);

--
-- Indexes for table `ci_admin`
--
ALTER TABLE `ci_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_basic`
--
ALTER TABLE `ci_basic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_beneficiary`
--
ALTER TABLE `ci_beneficiary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_checks`
--
ALTER TABLE `ci_checks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_email_template`
--
ALTER TABLE `ci_email_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_faqs`
--
ALTER TABLE `ci_faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_news`
--
ALTER TABLE `ci_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_notifications`
--
ALTER TABLE `ci_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_payment_gateways`
--
ALTER TABLE `ci_payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_settings`
--
ALTER TABLE `ci_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_support_tickets`
--
ALTER TABLE `ci_support_tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `letter_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `ci_temp_transfer`
--
ALTER TABLE `ci_temp_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_testimonials`
--
ALTER TABLE `ci_testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_transactions`
--
ALTER TABLE `ci_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_transfer`
--
ALTER TABLE `ci_transfer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ci_accounts`
--
ALTER TABLE `ci_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ci_admin`
--
ALTER TABLE `ci_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ci_basic`
--
ALTER TABLE `ci_basic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ci_beneficiary`
--
ALTER TABLE `ci_beneficiary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_checks`
--
ALTER TABLE `ci_checks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ci_email_template`
--
ALTER TABLE `ci_email_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `ci_faqs`
--
ALTER TABLE `ci_faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ci_news`
--
ALTER TABLE `ci_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ci_notifications`
--
ALTER TABLE `ci_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ci_payment_gateways`
--
ALTER TABLE `ci_payment_gateways`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `ci_settings`
--
ALTER TABLE `ci_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ci_support_tickets`
--
ALTER TABLE `ci_support_tickets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ci_temp_transfer`
--
ALTER TABLE `ci_temp_transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `ci_testimonials`
--
ALTER TABLE `ci_testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ci_transactions`
--
ALTER TABLE `ci_transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ci_transfer`
--
ALTER TABLE `ci_transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
